.class public Lcom/android/server/display/config/DisplayDeviceConfigUtils;
.super Ljava/lang/Object;
.source "DisplayDeviceConfigUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayDeviceConfigUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSpline(Ljava/util/List;Ljava/util/function/Function;Ljava/util/function/Function;)Landroid/util/Spline;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigDecimal;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Landroid/util/Spline;"
        }
    .end annotation

    .line 39
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "xExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/math/BigDecimal;>;"
    .local p2, "yExtractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/math/BigDecimal;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    .local v0, "size":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    return-object v1

    .line 44
    :cond_0
    new-array v2, v0, [F

    .line 45
    .local v2, "x":[F
    new-array v3, v0, [F

    .line 47
    .local v3, "y":[F
    const/4 v4, 0x0

    .line 48
    .local v4, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 49
    .local v6, "point":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    aput v7, v2, v4

    .line 50
    if-lez v4, :cond_1

    .line 51
    aget v7, v2, v4

    add-int/lit8 v8, v4, -0x1

    aget v8, v2, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "spline control points must be strictly increasing, ignoring configuration. x: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " <= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, -0x1

    aget v7, v2, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "DisplayDeviceConfigUtils"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-object v1

    .line 57
    :cond_1
    invoke-interface {p2, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    aput v7, v3, v4

    .line 58
    nop

    .end local v6    # "point":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    return-object v1
.end method

.method public static getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigDecimal;",
            ">;)F"
        }
    .end annotation

    .line 73
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "extractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/math/BigDecimal;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    .local v0, "highestRatio":F
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    .local v2, "point":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 76
    .local v3, "ratio":F
    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    .line 77
    move v0, v3

    .line 79
    .end local v2    # "point":Ljava/lang/Object;, "TT;"
    .end local v3    # "ratio":F
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    return v0
.end method
