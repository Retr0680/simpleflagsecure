.class public final synthetic Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    check-cast p1, Landroid/app/appsearch/SearchResults;

    invoke-static {v0, p1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->$r8$lambda$i-ta5WlaweofGofCKsVRgg4AMJQ(Lcom/android/server/appfunctions/FutureGlobalSearchSession;Landroid/app/appsearch/SearchResults;)Lcom/android/server/appfunctions/FutureSearchResults;

    move-result-object p1

    return-object p1
.end method
