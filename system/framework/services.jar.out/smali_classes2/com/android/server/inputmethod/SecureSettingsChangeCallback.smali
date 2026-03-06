.class interface abstract Lcom/android/server/inputmethod/SecureSettingsChangeCallback;
.super Ljava/lang/Object;
.source "SecureSettingsChangeCallback.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .local v0, "uriMapper":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Ljava/lang/String;>;"
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 59
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;-><init>(Landroid/os/Handler;Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V

    .line 73
    .local v1, "observer":Landroid/database/ContentObserver;
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 74
    .local v4, "uri":Landroid/net/Uri;
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v2, v1, v5}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    .line 76
    .end local v4    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract onChange(Ljava/lang/String;II)V
.end method
