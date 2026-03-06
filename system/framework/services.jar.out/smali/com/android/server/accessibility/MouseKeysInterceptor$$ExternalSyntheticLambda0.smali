.class public final synthetic Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

    iput p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

    iget v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor;->$r8$lambda$dSqd1rgrVUZV5NMqrkklERpGuZ0(Lcom/android/server/accessibility/MouseKeysInterceptor;I)V

    return-void
.end method
