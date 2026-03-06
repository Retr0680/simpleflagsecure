.class public final Lcom/android/server/permission/jarjar/kotlin/UnsignedKt;
.super Ljava/lang/Object;
.source "UnsignedJVM.kt"


# direct methods
.method public static final ulongToString(JI)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J
    .param p2, "base"    # I

    .line 129
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-string/jumbo v1, "toString(...)"

    if-ltz v0, :cond_0

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_0
    const/4 v0, 0x1

    ushr-long v2, p0, v0

    int-to-long v4, p2

    div-long/2addr v2, v4

    shl-long/2addr v2, v0

    .line 132
    .local v2, "quotient":J
    int-to-long v4, p2

    mul-long/2addr v4, v2

    sub-long v4, p0, v4

    .line 133
    .local v4, "rem":J
    int-to-long v6, p2

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 134
    int-to-long v6, p2

    sub-long/2addr v4, v6

    .line 135
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
