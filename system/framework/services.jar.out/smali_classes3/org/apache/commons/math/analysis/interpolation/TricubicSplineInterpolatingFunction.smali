.class public Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "TricubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/TrivariateRealFunction;


# static fields
.field private static final AINV:[[D


# instance fields
.field private final splines:[[[Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

.field private final xval:[D

.field private final yval:[D

.field private final zval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 65

    .line 44
    const/16 v0, 0x40

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    new-array v4, v0, [D

    fill-array-data v4, :array_3

    new-array v5, v0, [D

    fill-array-data v5, :array_4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    new-array v7, v0, [D

    fill-array-data v7, :array_6

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    new-array v9, v0, [D

    fill-array-data v9, :array_8

    new-array v10, v0, [D

    fill-array-data v10, :array_9

    new-array v11, v0, [D

    fill-array-data v11, :array_a

    new-array v12, v0, [D

    fill-array-data v12, :array_b

    new-array v13, v0, [D

    fill-array-data v13, :array_c

    new-array v14, v0, [D

    fill-array-data v14, :array_d

    new-array v15, v0, [D

    fill-array-data v15, :array_e

    move-object/from16 v16, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_f

    move-object/from16 v17, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_10

    move-object/from16 v18, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_11

    move-object/from16 v19, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_12

    move-object/from16 v20, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_13

    move-object/from16 v21, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    move-object/from16 v22, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_15

    move-object/from16 v23, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_16

    move-object/from16 v24, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_17

    move-object/from16 v25, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    move-object/from16 v26, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_19

    move-object/from16 v27, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1a

    move-object/from16 v28, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1b

    move-object/from16 v29, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    move-object/from16 v30, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1d

    move-object/from16 v31, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1e

    move-object/from16 v32, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1f

    move-object/from16 v33, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_20

    move-object/from16 v34, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_21

    move-object/from16 v35, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_22

    move-object/from16 v36, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_23

    move-object/from16 v37, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_24

    move-object/from16 v38, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_25

    move-object/from16 v39, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_26

    move-object/from16 v40, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_27

    move-object/from16 v41, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_28

    move-object/from16 v42, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_29

    move-object/from16 v43, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2a

    move-object/from16 v44, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2b

    move-object/from16 v45, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2c

    move-object/from16 v46, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2d

    move-object/from16 v47, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2e

    move-object/from16 v48, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2f

    move-object/from16 v49, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_30

    move-object/from16 v50, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_31

    move-object/from16 v51, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_32

    move-object/from16 v52, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_33

    move-object/from16 v53, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_34

    move-object/from16 v54, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_35

    move-object/from16 v55, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_36

    move-object/from16 v56, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_37

    move-object/from16 v57, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_38

    move-object/from16 v58, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_39

    move-object/from16 v59, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3a

    move-object/from16 v60, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3b

    move-object/from16 v61, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3c

    move-object/from16 v62, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3d

    move-object/from16 v63, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3e

    new-array v0, v0, [D

    fill-array-data v0, :array_3f

    move-object/from16 v64, v63

    move-object/from16 v63, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v49

    move-object/from16 v49, v50

    move-object/from16 v50, v51

    move-object/from16 v51, v52

    move-object/from16 v52, v53

    move-object/from16 v53, v54

    move-object/from16 v54, v55

    move-object/from16 v55, v56

    move-object/from16 v56, v57

    move-object/from16 v57, v58

    move-object/from16 v58, v59

    move-object/from16 v59, v60

    move-object/from16 v60, v61

    move-object/from16 v61, v62

    move-object/from16 v62, v64

    move-object/from16 v64, v0

    filled-new-array/range {v1 .. v64}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->AINV:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
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
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_5
    .array-data 8
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
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_6
    .array-data 8
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_7
    .array-data 8
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
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
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
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
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_10
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_13
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_14
    .array-data 8
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
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_15
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_16
    .array-data 8
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 8
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_19
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1a
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
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
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1c
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_1d
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1e
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
    .array-data 8
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
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
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_20
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_22
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
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
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
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
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
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
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
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
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 8
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
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
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
    .end array-data

    :array_25
    .array-data 8
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
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_26
    .array-data 8
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
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
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
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
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
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 8
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
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
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
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 8
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
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
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
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
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_2a
    .array-data 8
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2b
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2c
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
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
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
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
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_2e
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2f
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_30
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 8
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
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_35
    .array-data 8
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
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 8
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
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 8
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
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
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
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_39
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
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
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_3a
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3b
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3c
    .array-data 8
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
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
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_3e
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3f
    .array-data 8
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V
    .locals 153
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "z"    # [D
    .param p4, "f"    # [[[D
    .param p5, "dFdX"    # [[[D
    .param p6, "dFdY"    # [[[D
    .param p7, "dFdZ"    # [[[D
    .param p8, "d2FdXdY"    # [[[D
    .param p9, "d2FdXdZ"    # [[[D
    .param p10, "d2FdYdZ"    # [[[D
    .param p11, "d3FdXdYdZ"    # [[[D

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object/from16 v14, p1

    array-length v15, v14

    .line 157
    .local v15, "xLen":I
    move-object/from16 v10, p2

    const/16 v16, 0x2

    const/16 v17, 0x0

    array-length v12, v10

    .line 158
    .local v12, "yLen":I
    const/16 v18, 0x1

    array-length v13, v1

    .line 160
    .local v13, "zLen":I
    if-eqz v15, :cond_1b

    if-eqz v12, :cond_1b

    array-length v11, v1

    if-eqz v11, :cond_1b

    array-length v11, v2

    if-eqz v11, :cond_1b

    aget-object v11, v2, v17

    array-length v11, v11

    if-eqz v11, :cond_1b

    .line 163
    array-length v11, v2

    if-ne v15, v11, :cond_1a

    .line 166
    array-length v11, v3

    if-ne v15, v11, :cond_19

    .line 169
    array-length v11, v4

    if-ne v15, v11, :cond_18

    .line 172
    array-length v11, v5

    if-ne v15, v11, :cond_17

    .line 175
    array-length v11, v6

    if-ne v15, v11, :cond_16

    .line 178
    array-length v11, v7

    if-ne v15, v11, :cond_15

    .line 181
    array-length v11, v8

    if-ne v15, v11, :cond_14

    .line 184
    array-length v11, v9

    if-ne v15, v11, :cond_13

    .line 188
    invoke-static {v14}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 189
    invoke-static {v10}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 190
    invoke-static {v1}, Lorg/apache/commons/math/util/MathUtils;->checkOrder([D)V

    .line 192
    invoke-virtual {v14}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iput-object v11, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    .line 193
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iput-object v11, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    .line 194
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iput-object v11, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    .line 196
    add-int/lit8 v11, v15, -0x1

    .line 197
    .local v11, "lastI":I
    add-int/lit8 v1, v12, -0x1

    .line 198
    .local v1, "lastJ":I
    add-int/lit8 v10, v13, -0x1

    .line 199
    .local v10, "lastK":I
    const/4 v14, 0x3

    new-array v2, v14, [I

    aput v10, v2, v16

    aput v1, v2, v18

    aput v11, v2, v17

    const-class v14, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

    invoke-static {v14, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

    iput-object v2, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->splines:[[[Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_12

    .line 202
    aget-object v14, p4, v2

    array-length v14, v14

    if-ne v14, v12, :cond_11

    .line 205
    aget-object v14, v3, v2

    array-length v14, v14

    if-ne v14, v12, :cond_10

    .line 208
    aget-object v14, v4, v2

    array-length v14, v14

    if-ne v14, v12, :cond_f

    .line 211
    aget-object v14, v5, v2

    array-length v14, v14

    if-ne v14, v12, :cond_e

    .line 214
    aget-object v14, v6, v2

    array-length v14, v14

    if-ne v14, v12, :cond_d

    .line 217
    aget-object v14, v7, v2

    array-length v14, v14

    if-ne v14, v12, :cond_c

    .line 220
    aget-object v14, v8, v2

    array-length v14, v14

    if-ne v14, v12, :cond_b

    .line 223
    aget-object v14, v9, v2

    array-length v14, v14

    if-ne v14, v12, :cond_a

    .line 227
    add-int/lit8 v14, v2, 0x1

    .line 228
    .local v14, "ip1":I
    const/16 v20, 0x0

    move/from16 v21, v2

    move/from16 v2, v20

    .local v2, "j":I
    .local v21, "i":I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 229
    aget-object v20, p4, v21

    move/from16 v22, v1

    .end local v1    # "lastJ":I
    .local v22, "lastJ":I
    aget-object v1, v20, v2

    array-length v1, v1

    if-ne v1, v13, :cond_8

    .line 232
    aget-object v1, v3, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_7

    .line 235
    aget-object v1, v4, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_6

    .line 238
    aget-object v1, v5, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_5

    .line 241
    aget-object v1, v6, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_4

    .line 244
    aget-object v1, v7, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_3

    .line 247
    aget-object v1, v8, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_2

    .line 250
    aget-object v1, v9, v21

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v13, :cond_1

    .line 254
    add-int/lit8 v1, v2, 0x1

    .line 255
    .local v1, "jp1":I
    const/16 v20, 0x0

    move/from16 v23, v1

    move/from16 v1, v20

    .local v1, "k":I
    .local v23, "jp1":I
    :goto_2
    if-ge v1, v10, :cond_0

    .line 256
    add-int/lit8 v20, v1, 0x1

    .line 258
    .local v20, "kp1":I
    aget-object v24, p4, v21

    aget-object v24, v24, v2

    aget-wide v24, v24, v1

    aget-object v26, p4, v14

    aget-object v26, v26, v2

    aget-wide v26, v26, v1

    aget-object v28, p4, v21

    aget-object v28, v28, v23

    aget-wide v28, v28, v1

    aget-object v30, p4, v14

    aget-object v30, v30, v23

    aget-wide v30, v30, v1

    aget-object v32, p4, v21

    aget-object v32, v32, v2

    aget-wide v32, v32, v20

    aget-object v34, p4, v14

    aget-object v34, v34, v2

    aget-wide v34, v34, v20

    aget-object v36, p4, v21

    aget-object v36, v36, v23

    aget-wide v36, v36, v20

    aget-object v38, p4, v14

    aget-object v38, v38, v23

    aget-wide v38, v38, v20

    aget-object v40, v3, v21

    aget-object v40, v40, v2

    aget-wide v40, v40, v1

    aget-object v42, v3, v14

    aget-object v42, v42, v2

    aget-wide v42, v42, v1

    aget-object v44, v3, v21

    aget-object v44, v44, v23

    aget-wide v44, v44, v1

    aget-object v46, v3, v14

    aget-object v46, v46, v23

    aget-wide v46, v46, v1

    aget-object v48, v3, v21

    aget-object v48, v48, v2

    aget-wide v48, v48, v20

    aget-object v50, v3, v14

    aget-object v50, v50, v2

    aget-wide v50, v50, v20

    aget-object v52, v3, v21

    aget-object v52, v52, v23

    aget-wide v52, v52, v20

    aget-object v54, v3, v14

    aget-object v54, v54, v23

    aget-wide v54, v54, v20

    aget-object v56, v4, v21

    aget-object v56, v56, v2

    aget-wide v56, v56, v1

    aget-object v58, v4, v14

    aget-object v58, v58, v2

    aget-wide v58, v58, v1

    aget-object v60, v4, v21

    aget-object v60, v60, v23

    aget-wide v60, v60, v1

    aget-object v62, v4, v14

    aget-object v62, v62, v23

    aget-wide v62, v62, v1

    aget-object v64, v4, v21

    aget-object v64, v64, v2

    aget-wide v64, v64, v20

    aget-object v66, v4, v14

    aget-object v66, v66, v2

    aget-wide v66, v66, v20

    aget-object v68, v4, v21

    aget-object v68, v68, v23

    aget-wide v68, v68, v20

    aget-object v70, v4, v14

    aget-object v70, v70, v23

    aget-wide v70, v70, v20

    aget-object v72, v5, v21

    aget-object v72, v72, v2

    aget-wide v72, v72, v1

    aget-object v74, v5, v14

    aget-object v74, v74, v2

    aget-wide v74, v74, v1

    aget-object v76, v5, v21

    aget-object v76, v76, v23

    aget-wide v76, v76, v1

    aget-object v78, v5, v14

    aget-object v78, v78, v23

    aget-wide v78, v78, v1

    aget-object v80, v5, v21

    aget-object v80, v80, v2

    aget-wide v80, v80, v20

    aget-object v82, v5, v14

    aget-object v82, v82, v2

    aget-wide v82, v82, v20

    aget-object v84, v5, v21

    aget-object v84, v84, v23

    aget-wide v84, v84, v20

    aget-object v86, v5, v14

    aget-object v86, v86, v23

    aget-wide v86, v86, v20

    aget-object v88, v6, v21

    aget-object v88, v88, v2

    aget-wide v88, v88, v1

    aget-object v90, v6, v14

    aget-object v90, v90, v2

    aget-wide v90, v90, v1

    aget-object v92, v6, v21

    aget-object v92, v92, v23

    aget-wide v92, v92, v1

    aget-object v94, v6, v14

    aget-object v94, v94, v23

    aget-wide v94, v94, v1

    aget-object v96, v6, v21

    aget-object v96, v96, v2

    aget-wide v96, v96, v20

    aget-object v98, v6, v14

    aget-object v98, v98, v2

    aget-wide v98, v98, v20

    aget-object v100, v6, v21

    aget-object v100, v100, v23

    aget-wide v100, v100, v20

    aget-object v102, v6, v14

    aget-object v102, v102, v23

    aget-wide v102, v102, v20

    aget-object v104, v7, v21

    aget-object v104, v104, v2

    aget-wide v104, v104, v1

    aget-object v106, v7, v14

    aget-object v106, v106, v2

    aget-wide v106, v106, v1

    aget-object v108, v7, v21

    aget-object v108, v108, v23

    aget-wide v108, v108, v1

    aget-object v110, v7, v14

    aget-object v110, v110, v23

    aget-wide v110, v110, v1

    aget-object v112, v7, v21

    aget-object v112, v112, v2

    aget-wide v112, v112, v20

    aget-object v114, v7, v14

    aget-object v114, v114, v2

    aget-wide v114, v114, v20

    aget-object v116, v7, v21

    aget-object v116, v116, v23

    aget-wide v116, v116, v20

    aget-object v118, v7, v14

    aget-object v118, v118, v23

    aget-wide v118, v118, v20

    aget-object v120, v8, v21

    aget-object v120, v120, v2

    aget-wide v120, v120, v1

    aget-object v122, v8, v14

    aget-object v122, v122, v2

    aget-wide v122, v122, v1

    aget-object v124, v8, v21

    aget-object v124, v124, v23

    aget-wide v124, v124, v1

    aget-object v126, v8, v14

    aget-object v126, v126, v23

    aget-wide v126, v126, v1

    aget-object v128, v8, v21

    aget-object v128, v128, v2

    aget-wide v128, v128, v20

    aget-object v130, v8, v14

    aget-object v130, v130, v2

    aget-wide v130, v130, v20

    aget-object v132, v8, v21

    aget-object v132, v132, v23

    aget-wide v132, v132, v20

    aget-object v134, v8, v14

    aget-object v134, v134, v23

    aget-wide v134, v134, v20

    aget-object v136, v9, v21

    aget-object v136, v136, v2

    aget-wide v136, v136, v1

    aget-object v138, v9, v14

    aget-object v138, v138, v2

    aget-wide v138, v138, v1

    aget-object v140, v9, v21

    aget-object v140, v140, v23

    aget-wide v140, v140, v1

    aget-object v142, v9, v14

    aget-object v142, v142, v23

    aget-wide v142, v142, v1

    aget-object v144, v9, v21

    aget-object v144, v144, v2

    aget-wide v144, v144, v20

    aget-object v146, v9, v14

    aget-object v146, v146, v2

    aget-wide v146, v146, v20

    aget-object v148, v9, v21

    aget-object v148, v148, v23

    aget-wide v148, v148, v20

    aget-object v150, v9, v14

    aget-object v150, v150, v23

    aget-wide v150, v150, v20

    move/from16 v152, v1

    .end local v1    # "k":I
    .local v152, "k":I
    const/16 v1, 0x40

    new-array v1, v1, [D

    aput-wide v24, v1, v17

    aput-wide v26, v1, v18

    aput-wide v28, v1, v16

    const/16 v19, 0x3

    aput-wide v30, v1, v19

    const/16 v24, 0x4

    aput-wide v32, v1, v24

    const/16 v24, 0x5

    aput-wide v34, v1, v24

    const/16 v24, 0x6

    aput-wide v36, v1, v24

    const/16 v24, 0x7

    aput-wide v38, v1, v24

    const/16 v24, 0x8

    aput-wide v40, v1, v24

    const/16 v24, 0x9

    aput-wide v42, v1, v24

    const/16 v24, 0xa

    aput-wide v44, v1, v24

    const/16 v24, 0xb

    aput-wide v46, v1, v24

    const/16 v24, 0xc

    aput-wide v48, v1, v24

    const/16 v24, 0xd

    aput-wide v50, v1, v24

    const/16 v24, 0xe

    aput-wide v52, v1, v24

    const/16 v24, 0xf

    aput-wide v54, v1, v24

    const/16 v24, 0x10

    aput-wide v56, v1, v24

    const/16 v24, 0x11

    aput-wide v58, v1, v24

    const/16 v24, 0x12

    aput-wide v60, v1, v24

    const/16 v24, 0x13

    aput-wide v62, v1, v24

    const/16 v24, 0x14

    aput-wide v64, v1, v24

    const/16 v24, 0x15

    aput-wide v66, v1, v24

    const/16 v24, 0x16

    aput-wide v68, v1, v24

    const/16 v24, 0x17

    aput-wide v70, v1, v24

    const/16 v24, 0x18

    aput-wide v72, v1, v24

    const/16 v24, 0x19

    aput-wide v74, v1, v24

    const/16 v24, 0x1a

    aput-wide v76, v1, v24

    const/16 v24, 0x1b

    aput-wide v78, v1, v24

    const/16 v24, 0x1c

    aput-wide v80, v1, v24

    const/16 v24, 0x1d

    aput-wide v82, v1, v24

    const/16 v24, 0x1e

    aput-wide v84, v1, v24

    const/16 v24, 0x1f

    aput-wide v86, v1, v24

    const/16 v24, 0x20

    aput-wide v88, v1, v24

    const/16 v24, 0x21

    aput-wide v90, v1, v24

    const/16 v24, 0x22

    aput-wide v92, v1, v24

    const/16 v24, 0x23

    aput-wide v94, v1, v24

    const/16 v24, 0x24

    aput-wide v96, v1, v24

    const/16 v24, 0x25

    aput-wide v98, v1, v24

    const/16 v24, 0x26

    aput-wide v100, v1, v24

    const/16 v24, 0x27

    aput-wide v102, v1, v24

    const/16 v24, 0x28

    aput-wide v104, v1, v24

    const/16 v24, 0x29

    aput-wide v106, v1, v24

    const/16 v24, 0x2a

    aput-wide v108, v1, v24

    const/16 v24, 0x2b

    aput-wide v110, v1, v24

    const/16 v24, 0x2c

    aput-wide v112, v1, v24

    const/16 v24, 0x2d

    aput-wide v114, v1, v24

    const/16 v24, 0x2e

    aput-wide v116, v1, v24

    const/16 v24, 0x2f

    aput-wide v118, v1, v24

    const/16 v24, 0x30

    aput-wide v120, v1, v24

    const/16 v24, 0x31

    aput-wide v122, v1, v24

    const/16 v24, 0x32

    aput-wide v124, v1, v24

    const/16 v24, 0x33

    aput-wide v126, v1, v24

    const/16 v24, 0x34

    aput-wide v128, v1, v24

    const/16 v24, 0x35

    aput-wide v130, v1, v24

    const/16 v24, 0x36

    aput-wide v132, v1, v24

    const/16 v24, 0x37

    aput-wide v134, v1, v24

    const/16 v24, 0x38

    aput-wide v136, v1, v24

    const/16 v24, 0x39

    aput-wide v138, v1, v24

    const/16 v24, 0x3a

    aput-wide v140, v1, v24

    const/16 v24, 0x3b

    aput-wide v142, v1, v24

    const/16 v24, 0x3c

    aput-wide v144, v1, v24

    const/16 v24, 0x3d

    aput-wide v146, v1, v24

    const/16 v24, 0x3e

    aput-wide v148, v1, v24

    const/16 v24, 0x3f

    aput-wide v150, v1, v24

    .line 300
    .local v1, "beta":[D
    move/from16 v24, v2

    .end local v2    # "j":I
    .local v24, "j":I
    iget-object v2, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->splines:[[[Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

    aget-object v2, v2, v21

    aget-object v2, v2, v24

    move-object/from16 v25, v2

    new-instance v2, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

    move/from16 v26, v10

    .end local v10    # "lastK":I
    .local v26, "lastK":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;-><init>([D)V

    aput-object v2, v25, v152

    .line 255
    .end local v1    # "beta":[D
    .end local v20    # "kp1":I
    add-int/lit8 v1, v152, 0x1

    move/from16 v2, v24

    move/from16 v10, v26

    .end local v152    # "k":I
    .local v1, "k":I
    goto/16 :goto_2

    .end local v24    # "j":I
    .end local v26    # "lastK":I
    .restart local v2    # "j":I
    .restart local v10    # "lastK":I
    :cond_0
    move/from16 v152, v1

    move/from16 v24, v2

    move/from16 v26, v10

    const/16 v19, 0x3

    .line 228
    .end local v1    # "k":I
    .end local v2    # "j":I
    .end local v10    # "lastK":I
    .end local v23    # "jp1":I
    .restart local v24    # "j":I
    .restart local v26    # "lastK":I
    add-int/lit8 v2, v24, 0x1

    move/from16 v1, v22

    .end local v24    # "j":I
    .restart local v2    # "j":I
    goto/16 :goto_1

    .line 251
    .end local v26    # "lastK":I
    .restart local v10    # "lastK":I
    :cond_1
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v9, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 248
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_2
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v8, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 245
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_3
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v7, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 242
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_4
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v6, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 239
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_5
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v5, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 236
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_6
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v4, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 233
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_7
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v3, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 230
    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_8
    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, p4, v21

    aget-object v2, v2, v24

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 228
    .end local v22    # "lastJ":I
    .end local v24    # "j":I
    .local v1, "lastJ":I
    .restart local v2    # "j":I
    :cond_9
    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v26, v10

    const/16 v19, 0x3

    .line 201
    .end local v1    # "lastJ":I
    .end local v2    # "j":I
    .end local v10    # "lastK":I
    .end local v14    # "ip1":I
    .restart local v22    # "lastJ":I
    .restart local v26    # "lastK":I
    add-int/lit8 v2, v21, 0x1

    .end local v21    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 224
    .end local v22    # "lastJ":I
    .end local v26    # "lastK":I
    .restart local v1    # "lastJ":I
    .restart local v10    # "lastK":I
    :cond_a
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v9, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 221
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_b
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v8, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 218
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_c
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v7, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 215
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_d
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v6, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 212
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_e
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v5, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 209
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_f
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v4, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 206
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_10
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, v3, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 203
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_11
    move/from16 v22, v1

    move/from16 v21, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v21    # "i":I
    .restart local v22    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    aget-object v2, p4, v21

    array-length v2, v2

    invoke-direct {v1, v2, v12}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 201
    .end local v21    # "i":I
    .end local v22    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_12
    nop

    .line 304
    .end local v2    # "i":I
    return-void

    .line 185
    .end local v1    # "lastJ":I
    .end local v10    # "lastK":I
    .end local v11    # "lastI":I
    :cond_13
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v9

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 182
    :cond_14
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v8

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 179
    :cond_15
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v7

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 176
    :cond_16
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v6

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 173
    :cond_17
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v5

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 170
    :cond_18
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v4

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 167
    :cond_19
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    array-length v2, v3

    invoke-direct {v1, v15, v2}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 164
    :cond_1a
    new-instance v1, Lorg/apache/commons/math/exception/DimensionMismatchException;

    move-object/from16 v2, p4

    array-length v10, v2

    invoke-direct {v1, v15, v10}, Lorg/apache/commons/math/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 161
    :cond_1b
    new-instance v1, Lorg/apache/commons/math/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math/exception/NoDataException;-><init>()V

    throw v1
.end method

.method private computeSplineCoefficients([D)[D
    .locals 12
    .param p1, "beta"    # [D

    .line 402
    const/16 v0, 0x40

    .line 403
    .local v0, "sz":I
    const/16 v1, 0x40

    new-array v2, v1, [D

    .line 405
    .local v2, "a":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 406
    const-wide/16 v4, 0x0

    .line 407
    .local v4, "result":D
    sget-object v6, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->AINV:[[D

    aget-object v6, v6, v3

    .line 408
    .local v6, "row":[D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 409
    aget-wide v8, v6, v7

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 408
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 411
    .end local v7    # "j":I
    aput-wide v4, v2, v3

    .line 405
    .end local v4    # "result":D
    .end local v6    # "row":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 414
    .end local v3    # "i":I
    return-object v2
.end method

.method private searchIndex(D[D)I
    .locals 5
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .line 338
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    cmpg-double v0, p1, v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 339
    return v1

    .line 342
    :cond_0
    array-length v0, p3

    .line 343
    .local v0, "max":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 344
    aget-wide v3, p3, v2

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_1

    .line 345
    add-int/lit8 v1, v2, -0x1

    return v1

    .line 343
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 349
    .end local v2    # "i":I
    return v1
.end method


# virtual methods
.method public value(DDD)D
    .locals 21
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 310
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    iget-object v7, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v7

    .line 311
    .local v7, "i":I
    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 314
    iget-object v10, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    invoke-direct {v0, v3, v4, v10}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v10

    .line 315
    .local v10, "j":I
    if-eq v10, v9, :cond_1

    .line 318
    iget-object v11, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    invoke-direct {v0, v5, v6, v11}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v11

    .line 319
    .local v11, "k":I
    if-eq v11, v9, :cond_0

    .line 323
    iget-object v8, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    aget-wide v8, v8, v7

    sub-double v8, v1, v8

    iget-object v12, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    add-int/lit8 v13, v7, 0x1

    aget-wide v12, v12, v13

    iget-object v14, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    aget-wide v14, v14, v7

    sub-double/2addr v12, v14

    div-double v15, v8, v12

    .line 324
    .local v15, "xN":D
    iget-object v8, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v10

    sub-double v8, v3, v8

    iget-object v12, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v12, v12, v13

    iget-object v14, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    aget-wide v17, v14, v10

    sub-double v12, v12, v17

    div-double v17, v8, v12

    .line 325
    .local v17, "yN":D
    iget-object v8, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    aget-wide v8, v8, v11

    sub-double v8, v5, v8

    iget-object v12, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    add-int/lit8 v13, v11, 0x1

    aget-wide v12, v12, v13

    iget-object v14, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    aget-wide v19, v14, v11

    sub-double v12, v12, v19

    div-double v19, v8, v12

    .line 327
    .local v19, "zN":D
    iget-object v8, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->splines:[[[Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;

    aget-object v8, v8, v7

    aget-object v8, v8, v10

    aget-object v14, v8, v11

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineFunction;->value(DDD)D

    move-result-wide v8

    return-wide v8

    .line 320
    .end local v15    # "xN":D
    .end local v17    # "yN":D
    .end local v19    # "zN":D
    :cond_0
    new-instance v9, Lorg/apache/commons/math/exception/OutOfRangeException;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-object v13, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    aget-wide v13, v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v13, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    iget-object v14, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->zval:[D

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    aget-wide v13, v13, v14

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {v9, v12, v8, v13}, Lorg/apache/commons/math/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v9

    .line 316
    .end local v11    # "k":I
    :cond_1
    new-instance v9, Lorg/apache/commons/math/exception/OutOfRangeException;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-object v12, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    aget-wide v12, v12, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v12, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    iget-object v13, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->yval:[D

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-direct {v9, v11, v8, v12}, Lorg/apache/commons/math/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v9

    .line 312
    .end local v10    # "j":I
    :cond_2
    new-instance v9, Lorg/apache/commons/math/exception/OutOfRangeException;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-object v11, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    aget-wide v11, v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v11, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    iget-object v12, v0, Lorg/apache/commons/math/analysis/interpolation/TricubicSplineInterpolatingFunction;->xval:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-wide v11, v11, v12

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {v9, v10, v8, v11}, Lorg/apache/commons/math/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v9
.end method
