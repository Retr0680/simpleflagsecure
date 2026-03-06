.class Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;
.super Ljava/lang/Object;
.source "AppFunctionManagerServiceImpl.java"

# interfaces
.implements Landroid/app/appsearch/observer/ObserverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFunctionMetadataObserver"
.end annotation


# instance fields
.field private final mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "userContext"    # Landroid/content/Context;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    nop

    .line 667
    invoke-static {p1, p2}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 668
    return-void
.end method


# virtual methods
.method public onDocumentChanged(Landroid/app/appsearch/observer/DocumentChangeInfo;)V
    .locals 2
    .param p1, "documentChangeInfo"    # Landroid/app/appsearch/observer/DocumentChangeInfo;

    .line 672
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_0

    .line 673
    return-void

    .line 675
    :cond_0
    nop

    .line 676
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 677
    const-string v1, "apps-db"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p1}, Landroid/app/appsearch/observer/DocumentChangeInfo;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 680
    const-string v1, "app_functions"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {v0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    .line 685
    :cond_1
    return-void
.end method

.method public onSchemaChanged(Landroid/app/appsearch/observer/SchemaChangeInfo;)V
    .locals 4
    .param p1, "schemaChangeInfo"    # Landroid/app/appsearch/observer/SchemaChangeInfo;

    .line 689
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    if-nez v0, :cond_0

    .line 690
    return-void

    .line 692
    :cond_0
    nop

    .line 693
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 694
    const-string v1, "apps-db"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "shouldInitiateSync":Z
    invoke-virtual {p1}, Landroid/app/appsearch/observer/SchemaChangeInfo;->getChangedSchemaNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 697
    .local v2, "schemaName":Ljava/lang/String;
    const-string v3, "AppFunctionStaticMetadata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 698
    const/4 v0, 0x1

    .line 699
    goto :goto_1

    .line 697
    :cond_1
    nop

    .line 701
    .end local v2    # "schemaName":Ljava/lang/String;
    goto :goto_0

    .line 702
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 703
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;->mPerUserMetadataSyncAdapter:Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;

    .line 706
    .end local v0    # "shouldInitiateSync":Z
    :cond_3
    return-void
.end method
