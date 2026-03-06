.class Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;
.super Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringNumberConversionsKt;
.source "StringsJVM.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,817:1\n1179#2,2:818\n1#3:820\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:818,2\n*E\n"
.end annotation


# direct methods
.method public static final regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .locals 2
    .param p0, "$this$regionMatches"    # Ljava/lang/String;
    .param p1, "thisOffset"    # I
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "otherOffset"    # I
    .param p4, "length"    # I
    .param p5, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "other"

    invoke-static {p2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    if-nez p5, :cond_0

    .line 649
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    move-object v1, p2

    move p2, p1

    move p1, p5

    move p5, p4

    move p4, p3

    move-object p3, v1

    goto :goto_0

    .line 651
    :cond_0
    move-object v1, p2

    move p2, p1

    move p1, p5

    move p5, p4

    move p4, p3

    move-object p3, v1

    .local p1, "ignoreCase":Z
    .local p2, "thisOffset":I
    .local p3, "other":Ljava/lang/String;
    .local p4, "otherOffset":I
    .local p5, "length":I
    invoke-virtual/range {p0 .. p5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "$this$startsWith"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    if-nez p2, :cond_0

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 421
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    .end local p0    # "$this$startsWith":Ljava/lang/String;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "ignoreCase":Z
    .local v1, "$this$startsWith":Ljava/lang/String;
    .local v3, "prefix":Ljava/lang/String;
    .local v6, "ignoreCase":Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 416
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 417
    const/4 p2, 0x0

    .line 416
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
