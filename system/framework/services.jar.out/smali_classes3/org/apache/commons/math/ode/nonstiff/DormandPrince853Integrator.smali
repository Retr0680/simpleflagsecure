.class public Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;
.super Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "DormandPrince853Integrator.java"


# static fields
.field private static final E1_01:D = 0.01312004499419488

.field private static final E1_06:D = -1.2251564463762044

.field private static final E1_07:D = -0.4957589496572502

.field private static final E1_08:D = 1.6643771824549864

.field private static final E1_09:D = -0.35032884874997366

.field private static final E1_10:D = 0.3341791187130175

.field private static final E1_11:D = 0.08192320648511571

.field private static final E1_12:D = -0.022355307863886294

.field private static final E2_01:D = -0.18980075407240762

.field private static final E2_06:D = 4.450312892752409

.field private static final E2_07:D = 1.8915178993145003

.field private static final E2_08:D = -5.801203960010585

.field private static final E2_09:D = -0.42268232132379197

.field private static final E2_10:D = -0.1521609496625161

.field private static final E2_11:D = 0.20136540080403034

.field private static final E2_12:D = 0.022651792198360825

.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 8 (5, 3)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 63
    nop

    .line 64
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    sub-double v2, v6, v2

    const-wide v8, 0x4060e00000000000L    # 135.0

    div-double/2addr v2, v8

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v10

    sub-double v10, v0, v10

    const-wide v12, 0x4046800000000000L    # 45.0

    div-double/2addr v10, v12

    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v12

    sub-double v12, v0, v12

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double/2addr v12, v14

    .line 65
    invoke-static {v0, v1}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v16

    add-double v16, v16, v0

    div-double v16, v16, v14

    const/16 v14, 0xc

    new-array v15, v14, [D

    const/16 v18, 0x0

    aput-wide v2, v15, v18

    const/4 v2, 0x1

    aput-wide v10, v15, v2

    const/4 v3, 0x2

    aput-wide v12, v15, v3

    const/4 v10, 0x3

    aput-wide v16, v15, v10

    const-wide v11, 0x3fd5555555555555L    # 0.3333333333333333

    const/4 v13, 0x4

    aput-wide v11, v15, v13

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    move-wide/from16 v16, v0

    const/4 v0, 0x5

    aput-wide v11, v15, v0

    const-wide v11, 0x3fd3b13b13b13b14L    # 0.3076923076923077

    const/4 v1, 0x6

    aput-wide v11, v15, v1

    const-wide v11, 0x3fe4d74d74d74d75L    # 0.6512820512820513

    move-wide/from16 v19, v4

    const/4 v4, 0x7

    aput-wide v11, v15, v4

    const-wide v11, 0x3fe3333333333333L    # 0.6

    const/16 v5, 0x8

    aput-wide v11, v15, v5

    const-wide v11, 0x3feb6db6db6db6dbL    # 0.8571428571428571

    move-wide/from16 v21, v6

    const/16 v6, 0x9

    aput-wide v11, v15, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0xa

    aput-wide v11, v15, v7

    move-wide/from16 v23, v8

    const/16 v8, 0xb

    aput-wide v11, v15, v8

    sput-object v15, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    .line 70
    nop

    .line 73
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v11

    mul-double v11, v11, v19

    sub-double v11, v21, v11

    div-double v11, v11, v23

    new-array v9, v2, [D

    aput-wide v11, v9, v18

    .line 76
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v11

    sub-double v11, v16, v11

    const-wide v19, 0x4066800000000000L    # 180.0

    div-double v11, v11, v19

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    sub-double v19, v16, v19

    const-wide/high16 v21, 0x404e000000000000L    # 60.0

    div-double v19, v19, v21

    new-array v15, v3, [D

    aput-wide v11, v15, v18

    aput-wide v19, v15, v2

    .line 79
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v11

    sub-double v11, v16, v11

    const-wide/high16 v19, 0x405e000000000000L    # 120.0

    div-double v11, v11, v19

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    sub-double v19, v16, v19

    const-wide/high16 v21, 0x4044000000000000L    # 40.0

    div-double v19, v19, v21

    move/from16 v21, v2

    new-array v2, v10, [D

    aput-wide v11, v2, v18

    const-wide/16 v11, 0x0

    aput-wide v11, v2, v21

    aput-wide v19, v2, v3

    .line 82
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide v22, 0x405ac00000000000L    # 107.0

    mul-double v19, v19, v22

    const-wide v22, 0x407ce00000000000L    # 462.0

    add-double v19, v19, v22

    const-wide v22, 0x40a7700000000000L    # 3000.0

    div-double v19, v19, v22

    .line 83
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v22

    const-wide v24, 0x4068a00000000000L    # 197.0

    mul-double v22, v22, v24

    const-wide v24, -0x3f86e00000000000L    # -402.0

    sub-double v24, v24, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v24, v24, v22

    const-wide v22, 0x4052400000000000L    # 73.0

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v26

    mul-double v26, v26, v22

    const-wide/high16 v22, 0x4065000000000000L    # 168.0

    add-double v26, v26, v22

    const-wide v22, 0x4077700000000000L    # 375.0

    div-double v26, v26, v22

    move/from16 v22, v3

    new-array v3, v13, [D

    aput-wide v19, v3, v18

    aput-wide v11, v3, v21

    aput-wide v24, v3, v22

    aput-wide v26, v3, v10

    .line 86
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide/high16 v23, 0x4030000000000000L    # 16.0

    add-double v19, v19, v23

    const-wide/high16 v25, 0x405b000000000000L    # 108.0

    div-double v19, v19, v25

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v27

    sub-double v23, v23, v27

    div-double v23, v23, v25

    move/from16 v25, v10

    new-array v10, v0, [D

    const-wide v26, 0x3fa2f684bda12f68L    # 0.037037037037037035

    aput-wide v26, v10, v18

    aput-wide v11, v10, v21

    aput-wide v11, v10, v22

    aput-wide v19, v10, v25

    aput-wide v23, v10, v13

    .line 89
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide/high16 v23, 0x4037000000000000L    # 23.0

    mul-double v19, v19, v23

    const-wide v26, 0x405d800000000000L    # 118.0

    add-double v19, v19, v26

    const-wide/high16 v28, 0x4090000000000000L    # 1024.0

    div-double v19, v19, v28

    .line 90
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v30

    mul-double v30, v30, v23

    sub-double v26, v26, v30

    div-double v26, v26, v28

    move/from16 v23, v0

    new-array v0, v1, [D

    const-wide/high16 v28, 0x3fa3000000000000L    # 0.037109375

    aput-wide v28, v0, v18

    aput-wide v11, v0, v21

    aput-wide v11, v0, v22

    aput-wide v19, v0, v25

    aput-wide v26, v0, v13

    const-wide/high16 v19, -0x406e000000000000L    # -0.017578125

    aput-wide v19, v0, v23

    .line 93
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide v26, 0x40b2b00000000000L    # 4784.0

    mul-double v19, v19, v26

    const-wide v28, 0x40e92b0000000000L    # 51544.0

    add-double v19, v19, v28

    const-wide v30, 0x4116a97400000000L    # 371293.0

    div-double v19, v19, v30

    .line 94
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v32

    mul-double v32, v32, v26

    sub-double v28, v28, v32

    div-double v28, v28, v30

    move/from16 v24, v1

    new-array v1, v4, [D

    const-wide v26, 0x3fa2fdb8fee78792L    # 0.03709200011850479

    aput-wide v26, v1, v18

    aput-wide v11, v1, v21

    aput-wide v11, v1, v22

    aput-wide v19, v1, v25

    aput-wide v28, v1, v13

    const-wide v19, -0x4070a033df032cd1L    # -0.015319437748624402

    aput-wide v19, v1, v23

    const-wide v19, 0x3f80f1d92efb0b71L    # 0.008273789163814023

    aput-wide v19, v1, v24

    .line 98
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide v26, 0x42528e82fff4c000L    # 3.18801444819E11

    mul-double v19, v19, v26

    const-wide v28, -0x3d8cb866b2b38000L    # -1.324889724104E12

    sub-double v19, v28, v19

    const-wide v30, 0x42623c3684a38000L    # 6.265569375E11

    div-double v19, v19, v30

    .line 99
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v32

    mul-double v32, v32, v26

    add-double v32, v32, v28

    div-double v32, v32, v30

    move/from16 v26, v4

    new-array v4, v5, [D

    const-wide v27, 0x3fe3f8b78b985813L    # 0.6241109587160757

    aput-wide v27, v4, v18

    aput-wide v11, v4, v21

    aput-wide v11, v4, v22

    aput-wide v19, v4, v25

    aput-wide v32, v4, v13

    const-wide v19, 0x403b9793d88d1855L    # 27.59209969944671

    aput-wide v19, v4, v23

    const-wide v19, 0x40342770f892ad69L    # 20.154067550477894

    aput-wide v19, v4, v24

    const-wide v19, -0x3fba414b79a3bd07L    # -43.48988418106996

    aput-wide v19, v4, v26

    .line 105
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide v27, 0x41315d2b00000000L    # 1137963.0

    mul-double v19, v19, v27

    const-wide v29, -0x3eaec09000000000L    # -4521408.0

    sub-double v19, v29, v19

    const-wide v31, 0x4146694e00000000L    # 2937500.0

    div-double v19, v19, v31

    .line 106
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v33

    mul-double v33, v33, v27

    add-double v33, v33, v29

    div-double v33, v33, v31

    move/from16 v27, v5

    new-array v5, v6, [D

    const-wide v28, 0x3fde9205e321b655L    # 0.47766253643826434

    aput-wide v28, v5, v18

    aput-wide v11, v5, v21

    aput-wide v11, v5, v22

    aput-wide v19, v5, v25

    aput-wide v33, v5, v13

    const-wide v19, 0x40353ae4a6d655eeL    # 21.230051448181193

    aput-wide v19, v5, v23

    const-wide v19, 0x402e8ef7b5f258b8L    # 15.279233632882423

    aput-wide v19, v5, v24

    const-wide v19, -0x3fbf5b1be728ee47L    # -33.28821096898486

    aput-wide v19, v5, v26

    const-wide v19, -0x406b2e4c264b578aL    # -0.020331201708508627

    aput-wide v19, v5, v27

    .line 112
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide v28, 0x40f7076000000000L    # 94326.0

    mul-double v19, v19, v28

    const-wide v30, 0x41159ea000000000L    # 354216.0

    add-double v19, v19, v30

    const-wide v32, 0x40fb8cf000000000L    # 112847.0

    div-double v19, v19, v32

    .line 113
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v34

    mul-double v34, v34, v28

    sub-double v30, v30, v34

    div-double v30, v30, v32

    move/from16 v28, v6

    new-array v6, v7, [D

    const-wide v32, -0x401202ede0e2c665L    # -0.9371424300859873

    aput-wide v32, v6, v18

    aput-wide v11, v6, v21

    aput-wide v11, v6, v22

    aput-wide v19, v6, v25

    aput-wide v30, v6, v13

    const-wide v19, -0x3fdfb34f1deef3e4L    # -8.149787010746927

    aput-wide v19, v6, v23

    const-wide v19, -0x3fcd7adcfa168a58L    # -18.52006565999696

    aput-wide v19, v6, v24

    const-wide v19, 0x4036bd4f06cb863aL    # 22.739487099350505

    aput-wide v19, v6, v26

    const-wide v19, 0x4003f2e777cf109dL    # 2.4936055526796523

    aput-wide v19, v6, v27

    const-wide v19, -0x3ff7a039f2d4a8d4L    # -3.0467644718982196

    aput-wide v19, v6, v28

    .line 120
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v19

    const-wide v29, 0x412d531200000000L    # 960905.0

    mul-double v19, v19, v29

    const-wide v31, -0x3eb59f1c00000000L    # -3457480.0

    sub-double v19, v31, v19

    const-wide v33, 0x4120d5a800000000L    # 551636.0

    div-double v19, v19, v33

    .line 121
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v16

    mul-double v16, v16, v29

    add-double v16, v16, v31

    div-double v16, v16, v33

    new-array v8, v8, [D

    const-wide v29, 0x40022fbd3b09fcdcL    # 2.273310147516538

    aput-wide v29, v8, v18

    aput-wide v11, v8, v21

    aput-wide v11, v8, v22

    aput-wide v19, v8, v25

    aput-wide v16, v8, v13

    const-wide v11, -0x3fce0a837100cffaL    # -17.9589318631188

    aput-wide v11, v8, v23

    const-wide v11, 0x403bf2ea18b58a01L    # 27.94888452941996

    aput-wide v11, v8, v24

    const-wide v11, -0x3ff920c582e313edL    # -2.8589982771350235

    aput-wide v11, v8, v26

    const-wide v11, -0x3fde4118e560cc57L    # -8.87285693353063

    aput-wide v11, v8, v27

    const-wide v11, 0x4028b89c42c81861L    # 12.360567175794303

    aput-wide v11, v8, v28

    const-wide v11, 0x3fe496ac6253e202L    # 0.6433927460157636

    aput-wide v11, v8, v7

    new-array v7, v14, [D

    fill-array-data v7, :array_0

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move-object/from16 v19, v9

    move-object/from16 v23, v10

    move-object/from16 v20, v15

    filled-new-array/range {v19 .. v30}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    .line 137
    const/16 v0, 0xd

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    return-void

    :array_0
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
    .end array-data

    :array_1
    .array-data 8
        0x3fabcc6368d1177cL    # 0.054293734116568765
        0x0
        0x0
        0x0
        0x0
        0x4011cd1ed2ad5ae2L    # 4.450312892752409
        0x3ffe43a845d5ab9fL    # 1.8915178993145003
        -0x3fe8cb91306950bdL    # -5.801203960010585
        0x3fd3ea1df2f0eb98L    # 0.3111643669578199
        -0x403c85fd70bc4ffeL    # -0.1521609496625161
        0x3fc9c657697fe72dL    # 0.20136540080403034
        0x3fa6e44f50ab6bc2L    # 0.04471061572777259
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 15
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .line 218
    sget-object v3, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    const-string v1, "Dormand-Prince 8 (5, 3)"

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    .line 221
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 13
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .line 235
    sget-object v3, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_C:[D

    sget-object v4, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_A:[[D

    sget-object v5, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853Integrator;->STATIC_B:[D

    new-instance v6, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853StepInterpolator;

    invoke-direct {v6}, Lorg/apache/commons/math/ode/nonstiff/DormandPrince853StepInterpolator;-><init>()V

    const-string v1, "Dormand-Prince 8 (5, 3)"

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    .line 238
    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 22
    .param p1, "yDotK"    # [[D
    .param p2, "y0"    # [D
    .param p3, "y1"    # [D
    .param p4, "h"    # D

    .line 251
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 252
    .local v1, "error1":D
    const-wide/16 v3, 0x0

    .line 254
    .local v3, "error2":D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    iget v6, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ge v5, v6, :cond_1

    .line 255
    const/4 v6, 0x0

    aget-object v7, p1, v6

    aget-wide v7, v7, v5

    const-wide v9, 0x3f8adeaea1607e1aL    # 0.01312004499419488

    mul-double/2addr v7, v9

    const/4 v9, 0x5

    aget-object v10, p1, v9

    aget-wide v10, v10, v5

    const-wide v12, -0x400c65c25aa54a3dL    # -1.2251564463762044

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    const/4 v10, 0x6

    aget-object v11, p1, v10

    aget-wide v11, v11, v5

    const-wide v13, -0x4020457c4121758eL    # -0.4957589496572502

    mul-double/2addr v11, v13

    add-double/2addr v7, v11

    const/4 v11, 0x7

    aget-object v12, p1, v11

    aget-wide v12, v12, v5

    const-wide v14, 0x3ffaa149f7eda509L    # 1.6643771824549864

    mul-double/2addr v12, v14

    add-double/2addr v7, v12

    const/16 v12, 0x8

    aget-object v13, p1, v12

    aget-wide v13, v13, v5

    const-wide v15, -0x402994364ef1818fL    # -0.35032884874997366

    mul-double/2addr v13, v15

    add-double/2addr v7, v13

    const/16 v13, 0x9

    aget-object v14, p1, v13

    aget-wide v14, v14, v5

    const-wide v16, 0x3fd56330d0783989L    # 0.3341791187130175

    mul-double v14, v14, v16

    add-double/2addr v7, v14

    const/16 v14, 0xa

    aget-object v15, p1, v14

    aget-wide v15, v15, v5

    const-wide v17, 0x3fb4f8eb54a31435L    # 0.08192320648511571

    mul-double v15, v15, v17

    add-double/2addr v7, v15

    const/16 v15, 0xb

    aget-object v16, p1, v15

    aget-wide v16, v16, v5

    const-wide v18, -0x40691bb0af54943eL    # -0.022355307863886294

    mul-double v16, v16, v18

    add-double v7, v7, v16

    .line 259
    .local v7, "errSum1":D
    aget-object v6, p1, v6

    aget-wide v16, v6, v5

    const-wide v18, -0x4037b49be0405e0fL    # -0.18980075407240762

    mul-double v16, v16, v18

    aget-object v6, p1, v9

    aget-wide v18, v6, v5

    const-wide v20, 0x4011cd1ed2ad5ae2L    # 4.450312892752409

    mul-double v18, v18, v20

    add-double v16, v16, v18

    aget-object v6, p1, v10

    aget-wide v9, v6, v5

    const-wide v18, 0x3ffe43a845d5ab9fL    # 1.8915178993145003

    mul-double v9, v9, v18

    add-double v16, v16, v9

    aget-object v6, p1, v11

    aget-wide v9, v6, v5

    const-wide v18, -0x3fe8cb91306950bdL    # -5.801203960010585

    mul-double v9, v9, v18

    add-double v16, v16, v9

    aget-object v6, p1, v12

    aget-wide v9, v6, v5

    const-wide v11, -0x4024f2c5d95448e9L    # -0.42268232132379197

    mul-double/2addr v9, v11

    add-double v16, v16, v9

    aget-object v6, p1, v13

    aget-wide v9, v6, v5

    const-wide v11, -0x403c85fd70bc4ffeL    # -0.1521609496625161

    mul-double/2addr v9, v11

    add-double v16, v16, v9

    aget-object v6, p1, v14

    aget-wide v9, v6, v5

    const-wide v11, 0x3fc9c657697fe72dL    # 0.20136540080403034

    mul-double/2addr v9, v11

    add-double v16, v16, v9

    aget-object v6, p1, v15

    aget-wide v9, v6, v5

    const-wide v11, 0x3f9732080ac040eeL    # 0.022651792198360825

    mul-double/2addr v9, v11

    add-double v16, v16, v9

    .line 264
    .local v16, "errSum2":D
    aget-wide v9, p2, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v9

    aget-wide v11, p3, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 265
    .local v9, "yScale":D
    iget-object v6, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-nez v6, :cond_0

    .line 266
    iget-wide v11, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    iget-wide v13, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    goto :goto_1

    .line 267
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v11, v6, v5

    iget-object v6, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    aget-wide v13, v6, v5

    mul-double/2addr v13, v9

    add-double/2addr v11, v13

    :goto_1
    nop

    .line 268
    .local v11, "tol":D
    div-double v13, v7, v11

    .line 269
    .local v13, "ratio1":D
    mul-double v18, v13, v13

    add-double v1, v1, v18

    .line 270
    div-double v18, v16, v11

    .line 271
    .local v18, "ratio2":D
    mul-double v20, v18, v18

    add-double v3, v3, v20

    .line 254
    .end local v7    # "errSum1":D
    .end local v9    # "yScale":D
    .end local v11    # "tol":D
    .end local v13    # "ratio1":D
    .end local v16    # "errSum2":D
    .end local v18    # "ratio2":D
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    nop

    .line 274
    .end local v5    # "j":I
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v3

    add-double/2addr v5, v1

    .line 275
    .local v5, "den":D
    const-wide/16 v7, 0x0

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_2

    .line 276
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 279
    :cond_2
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    iget v9, v0, Lorg/apache/commons/math/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    int-to-double v9, v9

    mul-double/2addr v9, v5

    invoke-static {v9, v10}, Lorg/apache/commons/math/util/FastMath;->sqrt(D)D

    move-result-wide v9

    div-double/2addr v7, v9

    return-wide v7
.end method

.method public getOrder()I
    .locals 1

    .line 243
    const/16 v0, 0x8

    return v0
.end method
