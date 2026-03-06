.class public Lcom/nothing/server/NtExtServiceFactory;
.super Ljava/lang/Object;
.source "NtExtServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;
    }
.end annotation


# static fields
.field private static final FACTORY_IMPL_CLASS:Ljava/lang/String; = "com.nothing.server.NtExtServiceFactoryImpl"

.field private static final TAG:Ljava/lang/String; = "NtExtServiceFactory"

.field private static sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 72
    sget-object v0, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    invoke-interface {v0, p0}, Lcom/nothing/server/INtExtServiceFactory;->create(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/nothing/server/INtExtServiceFactory;
    .locals 3

    .line 34
    const-class v0, Lcom/nothing/server/NtExtServiceFactory;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    if-eqz v1, :cond_0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    sget-object v0, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    return-object v0

    .line 38
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must call init first!!!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 68
    sget-object v0, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    invoke-interface {v0, p0}, Lcom/nothing/server/INtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 43
    const-class v0, Lcom/nothing/server/NtExtServiceFactory;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    if-eqz v1, :cond_0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 64
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 51
    :cond_0
    :try_start_1
    const-string v1, "com.nothing.server.NtExtServiceFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "ctxStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 53
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nothing/server/INtExtServiceFactory;

    sput-object v3, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local v1    # "ctxStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    nop

    .line 56
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NtExtServiceFactory"

    const-string v3, "init failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    if-nez v1, :cond_1

    .line 61
    const-string v1, "NtExtServiceFactory"

    const-string v2, "using default factory"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;

    invoke-direct {v1, p0}, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nothing/server/NtExtServiceFactory;->sNtExtFactory:Lcom/nothing/server/INtExtServiceFactory;

    .line 64
    :cond_1
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
