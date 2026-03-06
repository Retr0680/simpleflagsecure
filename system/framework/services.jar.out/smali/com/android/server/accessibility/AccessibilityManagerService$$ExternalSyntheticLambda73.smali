.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/os/Bundle;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$2:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$2:Landroid/os/Bundle;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda73;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$807oSU31V42pxXEUNu07UmGul_8(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Intent;Landroid/os/Bundle;I)V

    return-void
.end method
