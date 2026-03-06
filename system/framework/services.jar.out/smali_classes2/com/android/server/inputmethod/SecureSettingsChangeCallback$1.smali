.class Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;
.super Landroid/database/ContentObserver;
.source "SecureSettingsChangeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/SecureSettingsChangeCallback;->register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

.field final synthetic val$uriMapper:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$mUm7_MlRs_rYS4P5EhwmlKuzLDM(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;IILandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->lambda$onChange$0(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;IILandroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 61
    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$uriMapper:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$callback:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic lambda$onChange$0(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;IILandroid/net/Uri;)V
    .locals 1
    .param p0, "uriMapper"    # Landroid/util/ArrayMap;
    .param p1, "callback"    # Lcom/android/server/inputmethod/SecureSettingsChangeCallback;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .line 66
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {p1, v0, p2, p3}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback;->onChange(Ljava/lang/String;II)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;II)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 65
    .local p2, "uris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$uriMapper:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->val$callback:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    new-instance v2, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p3, p4}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;II)V

    invoke-interface {p2, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 71
    return-void
.end method
