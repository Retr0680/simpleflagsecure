.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

.field public final synthetic f$1:Landroid/app/appsearch/PutDocumentsRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/PutDocumentsRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$1:Landroid/app/appsearch/PutDocumentsRequest;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda3;->f$1:Landroid/app/appsearch/PutDocumentsRequest;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-static {v0, v1, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->$r8$lambda$wkS14ELjO4CVVC29amwYKzXNsyc(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Landroid/app/appsearch/PutDocumentsRequest;Landroid/app/appsearch/AppSearchSession;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
