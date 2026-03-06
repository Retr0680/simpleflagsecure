.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/appsearch/SearchSpec;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;->f$1:Landroid/app/appsearch/SearchSpec;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda3;->f$1:Landroid/app/appsearch/SearchSpec;

    check-cast p1, Landroid/app/appsearch/GlobalSearchSession;

    invoke-static {v0, v1, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->$r8$lambda$0qHG0pa-4z42mlbsXVHJ9J0p-Mk(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Landroid/app/appsearch/GlobalSearchSession;)Landroid/app/appsearch/SearchResults;

    move-result-object p1

    return-object p1
.end method
