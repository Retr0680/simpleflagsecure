.class public final synthetic Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionExemptionProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/pm/PackageInfo;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    iput p2, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageInfo;

    iput-boolean p4, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    iget v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageInfo;

    iget-boolean v3, p0, Lcom/android/server/companion/CompanionExemptionProcessor$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/companion/CompanionExemptionProcessor;->$r8$lambda$ToR5gqUC2wI3TkFPVa5liwAr-YM(Lcom/android/server/companion/CompanionExemptionProcessor;ILandroid/content/pm/PackageInfo;Z)V

    return-void
.end method
