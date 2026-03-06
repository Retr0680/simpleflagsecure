.class public Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;
.super Ljava/lang/Object;
.source "NtExtServiceFactory.java"

# interfaces
.implements Lcom/nothing/server/INtExtServiceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/server/NtExtServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultServiceFactoryImpl"
.end annotation


# instance fields
.field protected mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/nothing/server/INtExtServiceFactory$ExtType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    iput-object p1, p0, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method


# virtual methods
.method public create(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 95
    sget-boolean v0, Landroid/os/Build;->DEBUG_NOTHING_FWK:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create[default]: type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/nothing/server/INtExtServiceFactory$ExtType;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # Lcom/nothing/server/INtExtServiceFactory$ExtType;

    .line 85
    iget-object v0, p0, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;->create(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/nothing/server/NtExtServiceFactory$DefaultServiceFactoryImpl;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
