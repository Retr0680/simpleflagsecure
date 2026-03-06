.class Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AugmentedAutofillErrorCallback"
.end annotation


# instance fields
.field mSessionWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/autofill/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/autofill/Session;

    .line 6668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6669
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    .line 6670
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6674
    iget-object v0, p0, Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;->mSessionWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/Session;

    .line 6676
    .local v0, "session":Lcom/android/server/autofill/Session;
    const-string v1, "AugmentedAutofillErrorCallback:"

    invoke-static {v0, v1}, Lcom/android/server/autofill/Session;->-$$Nest$smlogIfSessionNull(Lcom/android/server/autofill/Session;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6677
    return-void

    .line 6679
    :cond_0
    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$monAugmentedAutofillErrorCallback(Lcom/android/server/autofill/Session;)V

    .line 6680
    return-void
.end method
