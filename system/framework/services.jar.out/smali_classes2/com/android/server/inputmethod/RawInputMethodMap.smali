.class final Lcom/android/server/inputmethod/RawInputMethodMap;
.super Ljava/lang/Object;
.source "RawInputMethodMap.java"


# static fields
.field private static final EMPTY_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "RawInputMethodMap"


# instance fields
.field private final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 61
    return-void
.end method

.method static emptyMap()Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 2

    .line 52
    new-instance v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    sget-object v1, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/RawInputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method static of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Lcom/android/server/inputmethod/RawInputMethodMap;"
        }
    .end annotation

    .line 56
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/RawInputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method


# virtual methods
.method toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;
    .locals 10
    .param p1, "additionalSubtypeMap"    # Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .param p2, "directBootAwareness"    # I
    .param p3, "userUnlocked"    # Z

    .line 72
    iget-object v0, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 73
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 76
    .local v1, "newMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 80
    xor-int/lit8 v2, p3, 0x1

    .line 81
    .local v2, "requireDirectBootAwareFlag":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown directBootAwareness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Falling back to DirectBootAwareness.AUTO"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RawInputMethodMap"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v2    # "requireDirectBootAwareFlag":Z
    :pswitch_0
    const/4 v2, 0x0

    .restart local v2    # "requireDirectBootAwareFlag":Z
    goto :goto_0

    .line 78
    .end local v2    # "requireDirectBootAwareFlag":Z
    :pswitch_1
    xor-int/lit8 v2, p3, 0x1

    .line 86
    .restart local v2    # "requireDirectBootAwareFlag":Z
    :goto_0
    const/4 v3, 0x0

    .line 87
    .local v3, "updated":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 88
    iget-object v5, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 89
    .local v5, "imeId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 90
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-boolean v7, v7, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v7, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 92
    goto :goto_3

    .line 94
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 95
    .local v7, "newAdditionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    goto :goto_2

    .line 98
    :cond_2
    const/4 v3, 0x1

    .line 99
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v9, v6, v7}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 96
    :goto_2
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v5    # "imeId":Ljava/lang/String;
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "newAdditionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 103
    .end local v4    # "i":I
    if-eqz v3, :cond_4

    move-object v4, v1

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    :goto_4
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodMap;->of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
