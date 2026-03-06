.class public final synthetic Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsMigrationHelper$$ExternalSyntheticLambda1;->f$4:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/android/server/appop/DiscreteOpsMigrationHelper;->$r8$lambda$ZfpeygonAq8KDE2KwS-9vHEvN8c(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
