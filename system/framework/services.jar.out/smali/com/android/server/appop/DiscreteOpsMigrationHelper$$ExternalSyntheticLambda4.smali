.class public final synthetic Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;

    invoke-static {v0, p1, p2}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->$r8$lambda$RDOCngC1y_PoXkxyzmIO0-OO97w(Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V

    return-void
.end method
