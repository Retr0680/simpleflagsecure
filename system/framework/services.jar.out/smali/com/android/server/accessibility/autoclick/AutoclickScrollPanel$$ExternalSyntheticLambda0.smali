.class public final synthetic Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;->$r8$lambda$J0jBWuJaJLMR5-Kxli3d9cIylf0(Lcom/android/server/accessibility/autoclick/AutoclickScrollPanel;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
