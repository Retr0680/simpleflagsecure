.class final Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;
.super Ljava/lang/Object;
.source "BasicToPwleSegmentAdapter.java"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# static fields
.field private static final MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_REQUIRED_SENSITIVITY_DB_SL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BasicToPwleSegmentAdapter"

.field private static final sMinPerceptibleAccelerationsDb:[F

.field private static final sMinPerceptibleFrequenciesHz:[F


# direct methods
.method public static synthetic $r8$lambda$GQiBKIxHj6463EfUdNjK_QeP7io(Landroid/util/Pair;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->lambda$new$0(Landroid/util/Pair;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 53
    const/16 v0, 0x29

    new-array v0, v0, [Landroid/util/Pair;

    .line 54
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d3c6148    # -97.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d7447ae    # -69.86f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 55
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d84c28f    # -62.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d94c28f    # -58.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 56
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3d9d3d71    # -56.69f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3da4eb85    # -54.77f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 57
    const v1, 0x40e66666    # 7.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dac999a    # -52.85f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3db0eb85    # -51.77f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 58
    const v1, 0x410a3d71    # 8.64f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3db4a3d7    # -50.84f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dbc6666    # -48.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 59
    const v1, 0x4125eb85    # 10.37f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dbdeb85    # -48.52f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0x41470a3d    # 12.44f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, -0x3dc60000    # -46.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 60
    const v1, 0x416ee148    # 14.93f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dce47ae    # -44.43f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dce999a    # -44.35f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 61
    const v1, 0x418f5c29    # 17.92f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dd828f6    # -41.96f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dde8f5c    # -40.36f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 62
    const/high16 v1, 0x41ac0000    # 21.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3de1999a    # -39.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dea147b    # -37.48f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 63
    const v1, 0x41ce6666    # 25.8f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dec47ae    # -36.93f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3df6c28f    # -34.31f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 64
    const/high16 v1, 0x420c0000    # 35.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dfb7ae1    # -33.13f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3dfcc28f    # -32.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 65
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e007ae1    # -31.94f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v3, -0x3e01d70a    # -31.77f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    .line 66
    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v4, -0x3e0347ae    # -31.59f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v4, -0x3e03999a    # -31.55f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    .line 67
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const v1, 0x42accccd    # 86.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 68
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e0228f6    # -31.73f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e00cccd    # -31.9f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 69
    const v1, 0x42cf5c29    # 103.68f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const v1, 0x42f8d70a    # 124.42f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e026666    # -31.7f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 70
    const v1, 0x43154ccd    # 149.3f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e04f5c3    # -31.38f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e053333    # -31.35f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 71
    const v1, 0x433328f6    # 179.16f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e07d70a    # -31.02f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e091eb8    # -30.86f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 72
    const/high16 v1, 0x43570000    # 215.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e0d3333    # -30.35f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e1828f6    # -28.98f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 73
    const/high16 v1, 0x43810000    # 258.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e1a8f5c    # -28.68f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e29851f    # -26.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 74
    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, -0x3e61851f    # -19.81f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    .line 76
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    .line 78
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    array-length v0, v0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    new-instance v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    sget-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    sget-object v2, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 89
    sget-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    sget-object v2, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->MIN_PERCEPTIBLE_CURVE:[Landroid/util/Pair;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 91
    .end local v0    # "i":I
    return-void
.end method

.method private static calculateFrequencyRangeHz([F[F)Landroid/util/Pair;
    .locals 8
    .param p0, "frequenciesHz"    # [F
    .param p1, "accelerationsGs"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 152
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 153
    .local v0, "minFrequencyHz":F
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 155
    .local v1, "maxFrequencyHz":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 156
    const/high16 v3, 0x41200000    # 10.0f

    aget v4, p0, v2

    invoke-static {v3, v4}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertSensitivityLevelToAccelerationGs(FF)F

    move-result v3

    .line 159
    .local v3, "minAcceptableOutputAcceleration":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    aget v4, p1, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    .line 161
    if-nez v2, :cond_0

    .line 162
    const/4 v4, 0x0

    aget v0, p0, v4

    goto :goto_1

    .line 164
    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget v6, p1, v6

    aget v7, p1, v2

    invoke-static {v4, v5, v6, v7, v3}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    goto :goto_1

    .line 169
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_2

    aget v4, p1, v2

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 171
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    aget v5, p0, v2

    add-int/lit8 v6, v2, -0x1

    aget v6, p1, v6

    aget v7, p1, v2

    invoke-static {v4, v5, v6, v7, v3}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    .line 175
    new-instance v4, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 155
    .end local v3    # "minAcceptableOutputAcceleration":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 179
    .end local v2    # "i":I
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    const-string v2, "BasicToPwleSegmentAdapter"

    const-string v3, "Failed to retrieve frequency range. A valid frequency range must be available to create envelope vibration effects."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x0

    return-object v2

    .line 188
    :cond_4
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget v1, p0, v2

    .line 190
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static convertAccelerationToDecibel(F)F
    .locals 4
    .param p0, "accelerationGs"    # F

    .line 298
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static convertBasicToPwleSegment(Landroid/os/VibratorInfo$FrequencyProfile;Landroid/os/vibrator/BasicPwleSegment;FFF)Landroid/os/vibrator/PwleSegment;
    .locals 8
    .param p0, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;
    .param p1, "basicPwleSegment"    # Landroid/os/vibrator/BasicPwleSegment;
    .param p2, "minFrequencyHz"    # F
    .param p3, "maxFrequencyHz"    # F
    .param p4, "maxSensitivityLevel"    # F

    .line 202
    invoke-virtual {p1}, Landroid/os/vibrator/BasicPwleSegment;->getStartSharpness()F

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertSharpnessToFrequencyHz(FFF)F

    move-result v4

    .line 204
    .local v4, "startFrequency":F
    invoke-virtual {p1}, Landroid/os/vibrator/BasicPwleSegment;->getEndSharpness()F

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertSharpnessToFrequencyHz(FFF)F

    move-result v5

    .line 207
    .local v5, "endFrequency":F
    nop

    .line 208
    invoke-virtual {p1}, Landroid/os/vibrator/BasicPwleSegment;->getStartIntensity()F

    move-result v0

    .line 207
    invoke-static {p0, v0, v4, p4}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertIntensityToAmplitude(Landroid/os/VibratorInfo$FrequencyProfile;FFF)F

    move-result v2

    .line 209
    .local v2, "startAmplitude":F
    nop

    .line 210
    invoke-virtual {p1}, Landroid/os/vibrator/BasicPwleSegment;->getEndIntensity()F

    move-result v0

    .line 209
    invoke-static {p0, v0, v5, p4}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertIntensityToAmplitude(Landroid/os/VibratorInfo$FrequencyProfile;FFF)F

    move-result v3

    .line 212
    .local v3, "endAmplitude":F
    new-instance v1, Landroid/os/vibrator/PwleSegment;

    .line 213
    invoke-virtual {p1}, Landroid/os/vibrator/BasicPwleSegment;->getDuration()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    .line 212
    return-object v1
.end method

.method private static convertDecibelToAccelerationGs(F)F
    .locals 4
    .param p0, "db"    # F

    .line 288
    const/high16 v0, 0x41a00000    # 20.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static convertDecibelToSensitivityLevel(FF)F
    .locals 2
    .param p0, "db"    # F
    .param p1, "frequencyHz"    # F

    .line 302
    invoke-static {p1}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMinPerceptibleAccelerationDb(F)F

    move-result v0

    .line 303
    .local v0, "minPerceptibleDbAtFrequency":F
    sub-float v1, p0, v0

    return v1
.end method

.method private static convertIntensityToAccelerationGs(FFF)F
    .locals 1
    .param p0, "intensity"    # F
    .param p1, "frequencyHz"    # F
    .param p2, "maxSensitivityLevel"    # F

    .line 277
    mul-float v0, p0, p2

    invoke-static {v0, p1}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertSensitivityLevelToAccelerationGs(FF)F

    move-result v0

    return v0
.end method

.method private static convertIntensityToAmplitude(Landroid/os/VibratorInfo$FrequencyProfile;FFF)F
    .locals 3
    .param p0, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;
    .param p1, "intensity"    # F
    .param p2, "frequencyHz"    # F
    .param p3, "maxSensitivityLevel"    # F

    .line 232
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 237
    return v0

    .line 240
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertIntensityToAccelerationGs(FFF)F

    move-result v0

    .line 242
    .local v0, "desiredAcceleration":F
    invoke-virtual {p0, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationGs(F)F

    move-result v1

    .line 244
    .local v1, "availableAcceleration":F
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 245
    :cond_1
    div-float v2, v0, v1

    .line 244
    :goto_0
    return v2
.end method

.method private static convertSensitivityLevelToAccelerationGs(FF)F
    .locals 1
    .param p0, "sensitivityLevel"    # F
    .param p1, "frequencyHz"    # F

    .line 283
    nop

    .line 284
    invoke-static {p0, p1}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertSensitivityLevelToDecibel(FF)F

    move-result v0

    .line 283
    invoke-static {v0}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertDecibelToAccelerationGs(F)F

    move-result v0

    return v0
.end method

.method private static convertSensitivityLevelToDecibel(FF)F
    .locals 2
    .param p0, "sensitivityLevel"    # F
    .param p1, "frequencyHz"    # F

    .line 293
    invoke-static {p1}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMinPerceptibleAccelerationDb(F)F

    move-result v0

    .line 294
    .local v0, "minPerceptibleDbAtFrequency":F
    add-float v1, p0, v0

    return v1
.end method

.method private static convertSharpnessToFrequencyHz(FFF)F
    .locals 1
    .param p0, "sharpness"    # F
    .param p1, "minFrequencyHz"    # F
    .param p2, "maxFrequencyHz"    # F

    .line 272
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private static getMaxSensitivityLevel([F[FFF)F
    .locals 5
    .param p0, "frequenciesHz"    # [F
    .param p1, "accelerationsGs"    # [F
    .param p2, "minFrequencyHz"    # F
    .param p3, "maxFrequencyHz"    # F

    .line 250
    const/4 v0, 0x1

    .line 251
    .local v0, "maxAccelerationGs":F
    const/4 v1, -0x1

    .line 252
    .local v1, "maxAccelerationIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 253
    aget v3, p0, v2

    .line 254
    .local v3, "frequency":F
    cmpg-float v4, v3, p2

    if-gez v4, :cond_0

    .line 255
    goto :goto_1

    .line 257
    :cond_0
    cmpl-float v4, v3, p3

    if-lez v4, :cond_1

    .line 258
    goto :goto_2

    .line 260
    :cond_1
    aget v4, p1, v2

    cmpl-float v4, v4, v0

    if-lez v4, :cond_2

    .line 261
    aget v0, p1, v2

    .line 262
    move v1, v2

    .line 252
    .end local v3    # "frequency":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertAccelerationToDecibel(F)F

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v3}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertDecibelToSensitivityLevel(FF)F

    move-result v2

    return v2
.end method

.method private static getMinPerceptibleAccelerationDb(F)F
    .locals 6
    .param p0, "frequencyHz"    # F

    .line 311
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 312
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    aget v0, v0, v1

    return v0

    .line 314
    :cond_0
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    sget-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    .line 315
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    sget-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    .line 318
    :cond_1
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    .line 319
    .local v0, "idx":I
    if-ltz v0, :cond_2

    .line 320
    sget-object v1, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    aget v1, v1, v0

    return v1

    .line 324
    :cond_2
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 326
    .end local v0    # "idx":I
    .local v1, "idx":I
    sget-object v0, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    aget v0, v0, v1

    sget-object v2, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleAccelerationsDb:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    aget v3, v3, v1

    sget-object v4, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->sMinPerceptibleFrequenciesHz:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-static {v0, v2, v3, v4, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0
.end method

.method private static synthetic lambda$new$0(Landroid/util/Pair;)Ljava/lang/Float;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 85
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method


# virtual methods
.method public adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 11
    .param p1, "info"    # Landroid/os/VibratorInfo;
    .param p3, "repeatIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)I"
        }
    .end annotation

    .line 96
    .local p2, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    nop

    .line 97
    const-wide/16 v0, 0x1000

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return p3

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    .line 103
    .local v0, "frequencyProfile":Landroid/os/VibratorInfo$FrequencyProfile;
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    return p3

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequenciesHz()[F

    move-result-object v1

    .line 109
    .local v1, "frequenciesHz":[F
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getOutputAccelerationsGs()[F

    move-result-object v2

    .line 111
    .local v2, "accelerationsGs":[F
    nop

    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {v1, v2}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->calculateFrequencyRangeHz([F[F)Landroid/util/Pair;

    move-result-object v3

    .line 114
    .local v3, "frequencyRangeHz":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-nez v3, :cond_2

    .line 116
    return p3

    .line 118
    :cond_2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 119
    .local v4, "minFrequencyHz":F
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 120
    .local v5, "maxFrequencyHz":F
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->getMaxSensitivityLevel([F[FFF)F

    move-result v6

    .line 123
    .local v6, "maxSensitivityLevel":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 124
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/vibrator/VibrationEffectSegment;

    .line 125
    .local v8, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v9, v8, Landroid/os/vibrator/BasicPwleSegment;

    nop

    if-eqz v9, :cond_3

    move-object v9, v8

    check-cast v9, Landroid/os/vibrator/BasicPwleSegment;

    .line 126
    .local v9, "basicPwleSegment":Landroid/os/vibrator/BasicPwleSegment;
    invoke-static {v0, v9, v4, v5, v6}, Lcom/android/server/vibrator/BasicToPwleSegmentAdapter;->convertBasicToPwleSegment(Landroid/os/VibratorInfo$FrequencyProfile;Landroid/os/vibrator/BasicPwleSegment;FFF)Landroid/os/vibrator/PwleSegment;

    move-result-object v10

    .line 129
    .local v10, "pwleSegment":Landroid/os/vibrator/PwleSegment;
    invoke-interface {p2, v7, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v8    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v9    # "basicPwleSegment":Landroid/os/vibrator/BasicPwleSegment;
    .end local v10    # "pwleSegment":Landroid/os/vibrator/PwleSegment;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 133
    .end local v7    # "i":I
    return p3
.end method
