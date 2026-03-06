.class Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$3;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math/analysis/BivariateRealFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;->computePartialDerivatives()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

.field final synthetic val$aXX:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$3;->this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$3;->val$aXX:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 12
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 526
    const/4 v0, 0x4

    new-array v1, v0, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    aput-wide v2, v1, v6

    const/4 v7, 0x3

    aput-wide p1, v1, v7

    .line 528
    .local v1, "pX":[D
    mul-double v8, p3, p3

    .line 529
    .local v8, "y2":D
    mul-double v10, v8, p3

    .line 530
    .local v10, "y3":D
    new-array v0, v0, [D

    aput-wide v2, v0, v4

    aput-wide p3, v0, v5

    aput-wide v8, v0, v6

    aput-wide v10, v0, v7

    .line 532
    .local v0, "pY":[D
    iget-object v2, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$3;->this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

    iget-object v3, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$3;->val$aXX:[[D

    invoke-static {v2, v1, v0, v3}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v2

    return-wide v2
.end method
