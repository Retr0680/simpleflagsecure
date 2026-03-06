.class public final synthetic Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/InputMethodMenuControllerNew;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodMenuControllerNew$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodMenuControllerNew;->$r8$lambda$IEatni96P396ZHF_MES0J1HuJPI(Lcom/android/server/inputmethod/InputMethodMenuControllerNew;IILandroid/content/DialogInterface;)V

    return-void
.end method
