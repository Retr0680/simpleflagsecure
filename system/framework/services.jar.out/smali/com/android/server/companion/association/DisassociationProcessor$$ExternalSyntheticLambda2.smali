.class public final synthetic Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/DisassociationProcessor;ILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iput p2, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$3:Landroid/companion/AssociationInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/association/DisassociationProcessor;

    iget v1, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/association/DisassociationProcessor$$ExternalSyntheticLambda2;->f$3:Landroid/companion/AssociationInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->$r8$lambda$fxs-KBH0DInedDwjab-IDffzEmw(Lcom/android/server/companion/association/DisassociationProcessor;ILjava/lang/String;Landroid/companion/AssociationInfo;)V

    return-void
.end method
