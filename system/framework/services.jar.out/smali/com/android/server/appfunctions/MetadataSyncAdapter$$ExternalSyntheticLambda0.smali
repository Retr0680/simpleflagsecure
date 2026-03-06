.class public final synthetic Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

.field public final synthetic f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

.field public final synthetic f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iput-object p3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iput-object p4, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/app/appsearch/AppSearchManager$SearchContext;

    iget-object v3, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->$r8$lambda$DYPEgw1PQUL9Ehs5opJEeqwWcVk(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
