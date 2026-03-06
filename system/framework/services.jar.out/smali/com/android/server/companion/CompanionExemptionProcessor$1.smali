.class Lcom/android/server/companion/CompanionExemptionProcessor$1;
.super Ljava/lang/Object;
.source "CompanionExemptionProcessor.java"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionExemptionProcessor;-><init>(Landroid/content/Context;Landroid/os/PowerExemptionManager;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionExemptionProcessor;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionExemptionProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 3
    .param p1, "changeType"    # I
    .param p2, "association"    # Landroid/companion/AssociationInfo;

    .line 83
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 84
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-static {v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionExemptionProcessor;)Lcom/android/server/companion/association/AssociationStore;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "updatedAssociations":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    iget-object v2, p0, Lcom/android/server/companion/CompanionExemptionProcessor$1;->this$0:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAtm(ILjava/util/List;)V

    .line 88
    return-void
.end method
