.class public final synthetic Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;

.field public final synthetic f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    invoke-static {v0, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;->$r8$lambda$_3WcriFQoTh3QJXvw1pdtXqGiFM(Lcom/android/server/location/contexthub/ContextHubTransactionManagerOld;Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    return-void
.end method
