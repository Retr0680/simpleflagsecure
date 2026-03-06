.class public final synthetic Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    iput p3, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/SecureSettingsChangeCallback;

    iget v2, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1;->$r8$lambda$mUm7_MlRs_rYS4P5EhwmlKuzLDM(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/SecureSettingsChangeCallback;IILandroid/net/Uri;)V

    return-void
.end method
