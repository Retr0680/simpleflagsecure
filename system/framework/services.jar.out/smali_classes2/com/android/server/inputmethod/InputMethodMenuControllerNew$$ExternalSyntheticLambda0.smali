.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/inputmethod/InputMethodMenuControllerNew$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->$r8$lambda$-DHIbVCBBdP5s-oOHAerDovyFm8(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;IILcom/android/server/inputmethod/InputMethodMenuControllerNew$SubtypeItem;Z)V

    return-void
.end method
