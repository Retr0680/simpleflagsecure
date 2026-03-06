.class final Lcom/android/server/inputmethod/ImmutableSparseArray;
.super Ljava/lang/Object;
.source "ImmutableSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/server/inputmethod/ImmutableSparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    sput-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    .line 58
    return-void
.end method

.method static empty()Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-object v0
.end method


# virtual methods
.method cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 150
    .local v0, "prevKeyIndex":I
    if-ltz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "prevValue":Ljava/lang/Object;, "TE;"
    if-ne v1, p2, :cond_0

    .line 153
    return-object p0

    .line 156
    .end local v1    # "prevValue":Ljava/lang/Object;, "TE;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 157
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    new-instance v2, Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    return-object v2
.end method

.method cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/inputmethod/ImmutableSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->indexOfKey(I)I

    move-result v0

    .line 173
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 174
    return-object p0

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 177
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    return-object v1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 180
    .local v1, "clone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 181
    new-instance v2, Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    return-object v2
.end method

.method contains(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 109
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TE;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 132
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 135
    .end local v1    # "i":I
    return-void
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method indexOfKey(I)I
    .locals 1
    .param p1, "key"    # I

    .line 98
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 76
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .line 65
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/android/server/inputmethod/ImmutableSparseArray;, "Lcom/android/server/inputmethod/ImmutableSparseArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
