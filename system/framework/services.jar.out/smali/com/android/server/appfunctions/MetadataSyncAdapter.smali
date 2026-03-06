.class public Lcom/android/server/appfunctions/MetadataSyncAdapter;
.super Ljava/lang/Object;
.source "MetadataSyncAdapter.java"


# static fields
.field public static final EXECUTE_APP_FUNCTIONS:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

.field private mCurrentSyncTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$CBjQBlCD4YksJi7K1SzBIv7SPQI(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->lambda$getPackageToFunctionIdMap$1(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DYPEgw1PQUL9Ehs5opJEeqwWcVk(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->lambda$submitSyncRequest$0(Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;)V
    .locals 2
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "appSearchManager"    # Landroid/app/appsearch/AppSearchManager;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    .line 87
    new-instance v0, Lcom/android/server/appfunctions/NamedThreadFactory;

    const-string v1, "AppFunctionSyncExecutors"

    invoke-direct {v0, v1}, Lcom/android/server/appfunctions/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 90
    return-void
.end method

.method private static buildMetadataSearchSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;
    .locals 3
    .param p0, "schemaType"    # Ljava/lang/String;
    .param p1, "propertyFunctionId"    # Ljava/lang/String;
    .param p2, "propertyPackageName"    # Ljava/lang/String;

    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 472
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/appsearch/PropertyPath;

    invoke-direct {v1, p1}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/app/appsearch/PropertyPath;

    invoke-direct {v2, p2}, Landroid/app/appsearch/PropertyPath;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 474
    invoke-virtual {v0, p0, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addProjectionPaths(Ljava/lang/String;Ljava/util/Collection;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 472
    return-object v0
.end method

.method private buildPutRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/PutDocumentsRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/app/appsearch/PutDocumentsRequest;"
        }
    .end annotation

    .line 231
    .local p1, "addedFunctionsDiffMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    new-instance v0, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 234
    .local v0, "putDocumentRequestBuilder":Landroid/app/appsearch/PutDocumentsRequest$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 235
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 237
    .local v3, "addedFunctionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    .local v5, "addedFunctionId":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/app/appsearch/GenericDocument;

    new-instance v7, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    invoke-direct {v7, v2, v5}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v7}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 238
    invoke-virtual {v0, v6}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 241
    .end local v5    # "addedFunctionId":Ljava/lang/String;
    goto :goto_1

    .line 234
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "addedFunctionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 243
    .end local v1    # "i":I
    invoke-virtual {v0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object v1

    return-object v1
.end method

.method private buildRemoveRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/app/appsearch/RemoveByDocumentIdRequest;"
        }
    .end annotation

    .line 249
    .local p1, "removedFunctionsDiffMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    new-instance v0, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    const-string v1, "app_functions_runtime"

    invoke-direct {v0, v1}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "removeDocumentRequestBuilder":Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 256
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 258
    .local v3, "removedFunctionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 259
    .local v5, "functionId":Ljava/lang/String;
    nop

    .line 260
    invoke-static {v2, v5}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "documentId":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;

    .line 263
    .end local v5    # "functionId":Ljava/lang/String;
    .end local v6    # "documentId":Ljava/lang/String;
    goto :goto_1

    .line 255
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "removedFunctionIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 265
    .end local v1    # "i":I
    invoke-virtual {v0}, Landroid/app/appsearch/RemoveByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object v1

    return-object v1
.end method

.method private buildSetSchemaRequestForRuntimeMetadataSchemas(Landroid/content/pm/PackageManager;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest;
    .locals 8
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;)",
            "Landroid/app/appsearch/SetSchemaRequest;"
        }
    .end annotation

    .line 272
    .local p2, "metadataSchemaSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/appsearch/AppSearchSchema;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    new-instance v0, Landroid/app/appsearch/SetSchemaRequest$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;-><init>()V

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setForceOverride(Z)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addSchemas(Ljava/util/Collection;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    move-result-object v0

    .line 276
    .local v0, "setSchemaRequestBuilder":Landroid/app/appsearch/SetSchemaRequest$Builder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/appsearch/AppSearchSchema;

    .line 277
    .local v3, "runtimeMetadataSchema":Landroid/app/appsearch/AppSearchSchema;
    nop

    .line 279
    invoke-virtual {v3}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-static {v4}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getPackageNameFromSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B

    move-result-object v5

    .line 281
    .local v5, "packageCert":[B
    if-nez v5, :cond_0

    .line 282
    goto :goto_0

    .line 284
    :cond_0
    nop

    .line 285
    invoke-virtual {v3}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/app/appsearch/PackageIdentifier;

    invoke-direct {v7, v4, v5}, Landroid/app/appsearch/PackageIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 284
    invoke-virtual {v0, v6, v1, v7}, Landroid/app/appsearch/SetSchemaRequest$Builder;->setSchemaTypeVisibilityForPackage(Ljava/lang/String;ZLandroid/app/appsearch/PackageIdentifier;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 288
    nop

    .line 289
    invoke-virtual {v3}, Landroid/app/appsearch/AppSearchSchema;->getSchemaType()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    .line 288
    invoke-virtual {v0, v6, v7}, Landroid/app/appsearch/SetSchemaRequest$Builder;->addRequiredPermissionsForSchemaTypeVisibility(Ljava/lang/String;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest$Builder;

    .line 290
    .end local v3    # "runtimeMetadataSchema":Landroid/app/appsearch/AppSearchSchema;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "packageCert":[B
    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Landroid/app/appsearch/SetSchemaRequest$Builder;->build()Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v1

    return-object v1
.end method

.method private static convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/app/appsearch/AppSearchResult<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Ljava/lang/IllegalStateException;"
        }
    .end annotation

    .line 220
    .local p0, "appSearchResult":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/appsearch/AppSearchResult<Ljava/lang/Void;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "errorMessages":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/appsearch/AppSearchResult;

    .line 223
    .local v2, "result":Landroid/app/appsearch/AppSearchResult;, "Landroid/app/appsearch/AppSearchResult<Ljava/lang/Void;>;"
    invoke-virtual {v2}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .end local v2    # "result":Landroid/app/appsearch/AppSearchResult;, "Landroid/app/appsearch/AppSearchResult<Ljava/lang/Void;>;"
    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 349
    .local p0, "staticPackageToFunctionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local p1, "runtimePackageToFunctionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    invoke-static {p0, p1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private getAllRuntimeMetadataSchemas(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/app/appsearch/AppSearchSchema;",
            ">;"
        }
    .end annotation

    .line 298
    .local p1, "staticMetadataPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 301
    .local v0, "appRuntimeMetadataSchemas":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/appsearch/AppSearchSchema;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 303
    invoke-static {v2}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createAppFunctionRuntimeSchema(Ljava/lang/String;)Landroid/app/appsearch/AppSearchSchema;

    move-result-object v3

    .line 302
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 306
    :cond_0
    return-object v0
.end method

.method private getCertificate(Landroid/content/pm/PackageManager;Ljava/lang/String;)[B
    .locals 5
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    nop

    .line 492
    const/4 v0, 0x0

    const v1, 0x8000080

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 500
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v2, :cond_0

    .line 501
    sget-object v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signing info not found for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-object v0

    .line 507
    :cond_0
    :try_start_1
    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    .local v2, "md":Ljava/security/MessageDigest;
    nop

    .line 511
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v3

    .line 512
    .local v3, "signatures":[Landroid/content/pm/Signature;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-nez v4, :cond_2

    :cond_1
    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 516
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 513
    :goto_0
    return-object v0

    .line 508
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 509
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0

    .line 496
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name info not found for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v0
.end method

.method private static getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 381
    .local p0, "packageToFunctionMapA":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local p1, "packageToFunctionMapB":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 385
    .local v0, "diffMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 386
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    goto :goto_0

    .line 390
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 392
    .local v3, "diffFunctions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 393
    .local v5, "functionId":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 395
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v5    # "functionId":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 398
    :cond_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 399
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "diffFunctions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3
    goto :goto_0

    .line 402
    :cond_4
    return-object v0
.end method

.method static getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .param p0, "searchSession"    # Lcom/android/server/appfunctions/FutureAppSearchSession;
    .param p1, "schemaType"    # Ljava/lang/String;
    .param p2, "propertyFunctionId"    # Ljava/lang/String;
    .param p3, "propertyPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appfunctions/FutureAppSearchSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 424
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 427
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 429
    .local v0, "packageToFunctionIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 433
    invoke-static {p1, p2, p3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildMetadataSearchSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/SearchSpec;

    move-result-object v1

    .line 431
    const-string v2, ""

    invoke-interface {p0, v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appfunctions/FutureSearchResults;

    .line 436
    .local v1, "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    :try_start_0
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 438
    .local v2, "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/appsearch/SearchResult;

    .line 440
    .local v4, "searchResult":Landroid/app/appsearch/SearchResult;
    nop

    .line 442
    invoke-virtual {v4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v5

    .line 443
    invoke-virtual {v5, p3}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "packageName":Ljava/lang/String;
    nop

    .line 445
    invoke-virtual {v4}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, "functionId":Ljava/lang/String;
    new-instance v7, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 447
    invoke-virtual {v0, v5, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 448
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 449
    nop

    .end local v4    # "searchResult":Landroid/app/appsearch/SearchResult;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "functionId":Ljava/lang/String;
    goto :goto_1

    .line 429
    .end local v2    # "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 450
    .restart local v2    # "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :cond_0
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 438
    :cond_1
    nop

    .line 452
    .end local v2    # "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V

    .line 453
    .end local v1    # "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    return-object v0

    .line 429
    .restart local v1    # "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    :goto_2
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
.end method

.method static getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 371
    .local p0, "staticPackageToFunctionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local p1, "runtimePackageToFunctionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    invoke-static {p1, p0}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method private static getRemovedPackages(Ljava/util/Set;Ljava/util/Set;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    .local p0, "allExistingStaticPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "removedFunctionPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 324
    .local v0, "removedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 330
    :cond_1
    return-object v0
.end method

.method private static synthetic lambda$getPackageToFunctionIdMap$1(Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 447
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method private synthetic lambda$submitSyncRequest$0(Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "staticMetadataSearchContext"    # Landroid/app/appsearch/AppSearchManager$SearchContext;
    .param p2, "runtimeMetadataSearchContext"    # Landroid/app/appsearch/AppSearchManager$SearchContext;
    .param p3, "settableSyncStatus"    # Lcom/android/internal/infra/AndroidFuture;

    .line 110
    :try_start_0
    new-instance v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    sget-object v2, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v0, "staticMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :try_start_1
    new-instance v1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object v2, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mAppSearchManager:Landroid/app/appsearch/AppSearchManager;

    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .local v1, "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V

    .line 123
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :try_start_3
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :try_start_4
    invoke-interface {v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    .end local v0    # "staticMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    goto :goto_4

    .line 125
    :catch_0
    move-exception v0

    goto :goto_3

    .line 110
    .restart local v0    # "staticMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :catchall_0
    move-exception v1

    goto :goto_1

    .restart local v1    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-interface {v1}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "staticMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .end local p0    # "this":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .end local p1    # "staticMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local p2    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local p3    # "settableSyncStatus":Lcom/android/internal/infra/AndroidFuture;
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1    # "runtimeMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .restart local v0    # "staticMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .restart local p0    # "this":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .restart local p1    # "staticMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .restart local p2    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .restart local p3    # "settableSyncStatus":Lcom/android/internal/infra/AndroidFuture;
    :goto_1
    :try_start_7
    invoke-interface {v0}, Lcom/android/server/appfunctions/FutureAppSearchSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .end local p1    # "staticMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local p2    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .end local p3    # "settableSyncStatus":Lcom/android/internal/infra/AndroidFuture;
    :goto_2
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 125
    .end local v0    # "staticMetadataSearchSession":Lcom/android/server/appfunctions/FutureAppSearchSession;
    .restart local p0    # "this":Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .restart local p1    # "staticMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .restart local p2    # "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    .restart local p3    # "settableSyncStatus":Lcom/android/internal/infra/AndroidFuture;
    :goto_3
    nop

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p3, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 128
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method


# virtual methods
.method public shutDown()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 149
    return-void
.end method

.method public submitSyncRequest()Lcom/android/internal/infra/AndroidFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v1, "apps-db"

    invoke-direct {v0, v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v0

    .line 103
    .local v0, "staticMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    new-instance v1, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    const-string v2, "appfunctions-db"

    invoke-direct {v1, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    move-result-object v1

    .line 107
    .local v1, "runtimeMetadataSearchContext":Landroid/app/appsearch/AppSearchManager$SearchContext;
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 108
    .local v2, "settableSyncStatus":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/MetadataSyncAdapter;Landroid/app/appsearch/AppSearchManager$SearchContext;Landroid/app/appsearch/AppSearchManager$SearchContext;Lcom/android/internal/infra/AndroidFuture;)V

    .line 130
    .local v3, "runnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 131
    :try_start_0
    iget-object v5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v5

    .line 133
    .local v5, "unused":Z
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    .end local v5    # "unused":Z
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 137
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mCurrentSyncTask:Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_1

    .line 138
    :catch_0
    move-exception v5

    nop

    .line 139
    .local v5, "ex":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    sget-object v6, Lcom/android/server/appfunctions/MetadataSyncAdapter;->TAG:Ljava/lang/String;

    const-string v7, "Failed to submit sync request due to executor shutdown."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v5    # "ex":Ljava/util/concurrent/RejectedExecutionException;
    :goto_1
    monitor-exit v4

    .line 143
    return-object v2

    .line 141
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method trySyncAppFunctionMetadataBlocking(Lcom/android/server/appfunctions/FutureAppSearchSession;Lcom/android/server/appfunctions/FutureAppSearchSession;)V
    .locals 8
    .param p1, "staticMetadataSearchSession"    # Lcom/android/server/appfunctions/FutureAppSearchSession;
    .param p2, "runtimeMetadataSearchSession"    # Lcom/android/server/appfunctions/FutureAppSearchSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 157
    nop

    .line 158
    const-string v0, "AppFunctionStaticMetadata"

    const-string/jumbo v1, "functionId"

    const-string/jumbo v2, "packageName"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 163
    .local v0, "staticPackageToFunctionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 164
    const-string v3, "AppFunctionRuntimeMetadata"

    invoke-static {p2, v3, v1, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getPackageToFunctionIdMap(Lcom/android/server/appfunctions/FutureAppSearchSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 170
    .local v1, "runtimePackageToFunctionMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 171
    invoke-static {v0, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAddedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 172
    .local v2, "addedFunctionsDiffMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    nop

    .line 173
    invoke-static {v0, v1}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedFunctionsDiffMap(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 175
    .local v3, "removedFunctionsDiffMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    nop

    .line 179
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 178
    invoke-static {v4, v5}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getRemovedPackages(Ljava/util/Set;Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v4

    .line 180
    .local v4, "removedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 181
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 183
    :cond_0
    nop

    .line 184
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->getAllRuntimeMetadataSchemas(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 185
    .local v5, "appRuntimeMetadataSchemas":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/appsearch/AppSearchSchema;>;"
    nop

    .line 186
    invoke-static {}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->createParentAppFunctionRuntimeSchema()Landroid/app/appsearch/AppSearchSchema;

    move-result-object v6

    .line 185
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v6, p0, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 188
    invoke-direct {p0, v6, v5}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildSetSchemaRequestForRuntimeMetadataSchemas(Landroid/content/pm/PackageManager;Ljava/util/Set;)Landroid/app/appsearch/SetSchemaRequest;

    move-result-object v6

    .line 190
    .local v6, "addSetSchemaRequest":Landroid/app/appsearch/SetSchemaRequest;
    nop

    .line 191
    invoke-interface {p2, v6}, Lcom/android/server/appfunctions/FutureAppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/appsearch/SetSchemaResponse;

    .line 190
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .end local v4    # "removedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "appRuntimeMetadataSchemas":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/appsearch/AppSearchSchema;>;"
    .end local v6    # "addSetSchemaRequest":Landroid/app/appsearch/SetSchemaRequest;
    :cond_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    nop

    .line 196
    invoke-direct {p0, v3}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildRemoveRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/RemoveByDocumentIdRequest;

    move-result-object v4

    .line 197
    .local v4, "removeByDocumentIdRequest":Landroid/app/appsearch/RemoveByDocumentIdRequest;
    nop

    .line 198
    invoke-interface {p2, v4}, Lcom/android/server/appfunctions/FutureAppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/appsearch/AppSearchBatchResult;

    .line 199
    .local v5, "removeDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 200
    :cond_2
    nop

    .line 201
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 200
    invoke-static {v6}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object v6

    throw v6

    .line 205
    .end local v4    # "removeByDocumentIdRequest":Landroid/app/appsearch/RemoveByDocumentIdRequest;
    .end local v5    # "removeDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 206
    nop

    .line 207
    invoke-direct {p0, v2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->buildPutRuntimeMetadataRequest(Landroid/util/ArrayMap;)Landroid/app/appsearch/PutDocumentsRequest;

    move-result-object v4

    .line 208
    .local v4, "putDocumentsRequest":Landroid/app/appsearch/PutDocumentsRequest;
    nop

    .line 209
    invoke-interface {p2, v4}, Lcom/android/server/appfunctions/FutureAppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/appsearch/AppSearchBatchResult;

    .line 210
    .local v5, "putDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 211
    :cond_4
    nop

    .line 212
    invoke-virtual {v5}, Landroid/app/appsearch/AppSearchBatchResult;->getFailures()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 211
    invoke-static {v6}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->convertFailedAppSearchResultToException(Ljava/util/Collection;)Ljava/lang/IllegalStateException;

    move-result-object v6

    throw v6

    .line 215
    .end local v4    # "putDocumentsRequest":Landroid/app/appsearch/PutDocumentsRequest;
    .end local v5    # "putDocumentBatchResult":Landroid/app/appsearch/AppSearchBatchResult;, "Landroid/app/appsearch/AppSearchBatchResult<Ljava/lang/String;Ljava/lang/Void;>;"
    :cond_5
    :goto_2
    return-void
.end method
