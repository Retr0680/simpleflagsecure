.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-static {p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->$r8$lambda$1vtyz9aT23J_5hh81zE3Mn4z3qg(Landroid/app/appsearch/AppSearchResult;)Landroid/app/appsearch/GetSchemaResponse;

    move-result-object p1

    return-object p1
.end method
