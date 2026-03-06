.class public final Lcom/android/server/permission/jarjar/kotlin/text/UStringsKt;
.super Ljava/lang/Object;
.source "UStrings.kt"


# direct methods
.method public static final toString-V7xB4Y4(II)Ljava/lang/String;
    .locals 5
    .param p0, "$this$toString_u2dV7xB4Y4"    # I
    .param p1, "radix"    # I

    .line 39
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Lcom/android/server/permission/jarjar/kotlin/UnsignedKt;->ulongToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
