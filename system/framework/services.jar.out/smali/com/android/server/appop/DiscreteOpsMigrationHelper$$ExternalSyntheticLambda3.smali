.class public final synthetic Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->$r8$lambda$19tSOZDLMLzIL5IqAUQI2hUj4lI(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteDeviceOp;)V

    return-void
.end method
