.class public final Lcom/android/server/permission/jarjar/kotlin/jvm/internal/ArrayIteratorKt;
.super Ljava/lang/Object;
.source "ArrayIterator.kt"


# direct methods
.method public static final iterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/ArrayIterator;

    invoke-direct {v0, p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
