.class public final synthetic Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->$r8$lambda$y8jVtD60r1BH-ULLfLoyYubJERU(Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V

    return-void
.end method
