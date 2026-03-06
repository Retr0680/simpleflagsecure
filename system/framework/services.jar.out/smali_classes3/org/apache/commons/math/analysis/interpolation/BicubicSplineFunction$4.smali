.class Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$4;
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

.field final synthetic val$aYY:[[D


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

    .line 535
    iput-object p1, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$4;->this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$4;->val$aYY:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 14
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 537
    mul-double v0, p1, p1

    .line 538
    .local v0, "x2":D
    mul-double v2, v0, p1

    .line 539
    .local v2, "x3":D
    const/4 v4, 0x4

    new-array v5, v4, [D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    aput-wide v6, v5, v8

    const/4 v9, 0x1

    aput-wide p1, v5, v9

    const/4 v10, 0x2

    aput-wide v0, v5, v10

    const/4 v11, 0x3

    aput-wide v2, v5, v11

    .line 541
    .local v5, "pX":[D
    new-array v4, v4, [D

    const-wide/16 v12, 0x0

    aput-wide v12, v4, v8

    aput-wide v12, v4, v9

    aput-wide v6, v4, v10

    aput-wide p3, v4, v11

    .line 543
    .local v4, "pY":[D
    iget-object v6, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$4;->this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

    iget-object v7, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$4;->val$aYY:[[D

    invoke-static {v6, v5, v4, v7}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v6

    return-wide v6
.end method
