.class Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$1;
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

.field final synthetic val$aX:[[D


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

    .line 500
    iput-object p1, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$1;->this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$1;->val$aX:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 14
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 502
    mul-double v0, p1, p1

    .line 503
    .local v0, "x2":D
    const/4 v2, 0x4

    new-array v3, v2, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    aput-wide v4, v3, v7

    const/4 v8, 0x2

    aput-wide p1, v3, v8

    const/4 v9, 0x3

    aput-wide v0, v3, v9

    .line 505
    .local v3, "pX":[D
    mul-double v10, p3, p3

    .line 506
    .local v10, "y2":D
    mul-double v12, v10, p3

    .line 507
    .local v12, "y3":D
    new-array v2, v2, [D

    aput-wide v4, v2, v6

    aput-wide p3, v2, v7

    aput-wide v10, v2, v8

    aput-wide v12, v2, v9

    .line 509
    .local v2, "pY":[D
    iget-object v4, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$1;->this$0:Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;

    iget-object v5, p0, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction$1;->val$aX:[[D

    invoke-static {v4, v3, v2, v5}, Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v4

    return-wide v4
.end method
