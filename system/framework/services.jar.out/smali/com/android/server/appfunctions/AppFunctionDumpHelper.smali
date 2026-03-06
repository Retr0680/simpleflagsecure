.class public final Lcom/android/server/appfunctions/AppFunctionDumpHelper;
.super Ljava/lang/Object;
.source "AppFunctionDumpHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/android/server/appfunctions/AppFunctionDumpHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppFunctionMetadataSearchSpec()Landroid/app/appsearch/SearchSpec;
    .locals 4

    .line 104
    new-instance v0, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v0}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    const-string v1, "android"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    const-string v2, "AppFunctionRuntimeMetadata"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v0, v2}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    .line 109
    .local v0, "runtimeMetadataSearchSpec":Landroid/app/appsearch/SearchSpec;
    new-instance v2, Landroid/app/appsearch/JoinSpec$Builder;

    const-string v3, "appFunctionStaticMetadataQualifiedId"

    invoke-direct {v2, v3}, Landroid/app/appsearch/JoinSpec$Builder;-><init>(Ljava/lang/String;)V

    .line 111
    const-string v3, ""

    invoke-virtual {v2, v3, v0}, Landroid/app/appsearch/JoinSpec$Builder;->setNestedSearch(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Landroid/app/appsearch/JoinSpec$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/app/appsearch/JoinSpec$Builder;->build()Landroid/app/appsearch/JoinSpec;

    move-result-object v2

    .line 114
    .local v2, "joinSpec":Landroid/app/appsearch/JoinSpec;
    new-instance v3, Landroid/app/appsearch/SearchSpec$Builder;

    invoke-direct {v3}, Landroid/app/appsearch/SearchSpec$Builder;-><init>()V

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v3, v1}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterPackageNames([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    const-string v3, "AppFunctionStaticMetadata"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v1, v3}, Landroid/app/appsearch/SearchSpec$Builder;->addFilterSchemas([Ljava/lang/String;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v2}, Landroid/app/appsearch/SearchSpec$Builder;->setJoinSpec(Landroid/app/appsearch/JoinSpec;)Landroid/app/appsearch/SearchSpec$Builder;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/app/appsearch/SearchSpec$Builder;->build()Landroid/app/appsearch/SearchSpec;

    move-result-object v1

    .line 114
    return-object v1
.end method

.method private static dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V
    .locals 3
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "joinedSearchResult"    # Landroid/app/appsearch/SearchResult;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppFunctionMetadata for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "functionId"

    invoke-virtual {v1, v2}, Landroid/app/appsearch/GenericDocument;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    const-string v0, "Static Metadata:"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 132
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 133
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 135
    const-string v0, "Runtime Metadata:"

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 137
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    nop

    .line 139
    invoke-virtual {p1}, Landroid/app/appsearch/SearchResult;->getJoinedResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/SearchResult;

    invoke-virtual {v0}, Landroid/app/appsearch/SearchResult;->getGenericDocument()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    .line 138
    invoke-static {p0, v0}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    goto :goto_0

    .line 141
    :cond_0
    const-string v0, "No runtime metadata found."

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 145
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 146
    return-void
.end method

.method public static dumpAppFunctionsState(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # Ljava/io/PrintWriter;

    .line 56
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 57
    .local v0, "userManager":Landroid/os/UserManager;
    if-nez v0, :cond_0

    .line 58
    const-string v1, "Couldn\'t retrieve UserManager."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    return-void

    .line 62
    :cond_0
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    .local v1, "pw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 66
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppFunction state for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 69
    nop

    .line 70
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 69
    invoke-static {v5, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsStateForUser(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    .line 71
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 72
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method private static dumpAppFunctionsStateForUser(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 77
    const-class v0, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 78
    .local v0, "appSearchManager":Landroid/app/appsearch/AppSearchManager;
    if-nez v0, :cond_0

    .line 79
    const-string v1, "Couldn\'t retrieve AppSearchManager."

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 80
    return-void

    .line 83
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v1, "searchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    :try_start_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 87
    const-string v2, ""

    .line 88
    invoke-static {}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->buildAppFunctionMetadataSearchSpec()Landroid/app/appsearch/SearchSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->search(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appfunctions/FutureSearchResults;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .local v2, "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureSearchResults;->getNextPage()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 92
    .local v3, "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/appsearch/SearchResult;

    .line 93
    .local v5, "searchResult":Landroid/app/appsearch/SearchResult;
    invoke-static {p1, v5}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionMetadata(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/SearchResult;)V

    .line 94
    .end local v5    # "searchResult":Landroid/app/appsearch/SearchResult;
    goto :goto_0

    .line 87
    .end local v3    # "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 95
    .restart local v3    # "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v4, :cond_1

    .line 96
    .end local v3    # "searchResultsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/appsearch/SearchResult;>;"
    :try_start_3
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    .end local v2    # "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 100
    .end local v1    # "searchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    goto :goto_6

    .line 98
    :catch_0
    move-exception v1

    goto :goto_5

    .line 83
    .restart local v1    # "searchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 87
    .restart local v2    # "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    :goto_1
    if-eqz v2, :cond_3

    :try_start_5
    invoke-interface {v2}, Lcom/android/server/appfunctions/FutureSearchResults;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    nop

    .end local v0    # "appSearchManager":Landroid/app/appsearch/AppSearchManager;
    .end local v1    # "searchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "pw":Landroid/util/IndentingPrintWriter;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    .end local v2    # "futureSearchResults":Lcom/android/server/appfunctions/FutureSearchResults;
    .restart local v0    # "appSearchManager":Landroid/app/appsearch/AppSearchManager;
    .restart local v1    # "searchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "pw":Landroid/util/IndentingPrintWriter;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v3

    :try_start_8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "appSearchManager":Landroid/app/appsearch/AppSearchManager;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "pw":Landroid/util/IndentingPrintWriter;
    :goto_4
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 98
    .end local v1    # "searchSession":Lcom/android/server/appfunctions/FutureGlobalSearchSession;
    .restart local v0    # "appSearchManager":Landroid/app/appsearch/AppSearchManager;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "pw":Landroid/util/IndentingPrintWriter;
    :goto_5
    nop

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to dump AppFunction state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private static writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V
    .locals 10
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "genericDocument"    # Landroid/app/appsearch/GenericDocument;

    .line 150
    invoke-virtual {p1}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    .line 151
    .local v0, "propertyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 155
    .local v3, "propertyValue":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    instance-of v4, v3, [Landroid/app/appsearch/GenericDocument;

    const-string v6, ", "

    if-eqz v4, :cond_2

    .line 158
    move-object v4, v3

    check-cast v4, [Landroid/app/appsearch/GenericDocument;

    .line 159
    .local v4, "documentValues":[Landroid/app/appsearch/GenericDocument;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v7, v4

    if-ge v5, v7, :cond_1

    .line 160
    aget-object v7, v4, v5

    .line 161
    .local v7, "documentValue":Landroid/app/appsearch/GenericDocument;
    invoke-static {p0, v7}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->writeGenericDocumentProperties(Landroid/util/IndentingPrintWriter;Landroid/app/appsearch/GenericDocument;)V

    .line 162
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-eq v5, v8, :cond_0

    .line 163
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 159
    .end local v7    # "documentValue":Landroid/app/appsearch/GenericDocument;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 167
    .end local v4    # "documentValues":[Landroid/app/appsearch/GenericDocument;
    .end local v5    # "i":I
    goto :goto_4

    .line 168
    :cond_2
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    .line 169
    .local v4, "propertyArrLength":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    .line 170
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 171
    .local v8, "propertyElement":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 172
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 173
    :cond_3
    instance-of v9, v8, [B

    if-eqz v9, :cond_4

    .line 174
    move-object v9, v8

    check-cast v9, [B

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_4
    if-eqz v8, :cond_5

    .line 176
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 178
    :cond_5
    :goto_3
    add-int/lit8 v9, v4, -0x1

    if-eq v7, v9, :cond_6

    .line 179
    invoke-virtual {p0, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .end local v8    # "propertyElement":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 183
    .end local v4    # "propertyArrLength":I
    .end local v7    # "i":I
    :cond_7
    :goto_4
    const-string v4, "]"

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .end local v2    # "propertyName":Ljava/lang/String;
    .end local v3    # "propertyValue":Ljava/lang/Object;
    goto/16 :goto_0

    .line 185
    :cond_8
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 186
    const-string/jumbo v1, "}"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    return-void
.end method
