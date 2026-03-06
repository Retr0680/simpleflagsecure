.class public interface abstract Lcom/nothing/server/ex/INtConfigListService;
.super Ljava/lang/Object;
.source "INtConfigListService.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ex/INtConfigListService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/nothing/server/ex/INtConfigListService$1;

    invoke-direct {v0}, Lcom/nothing/server/ex/INtConfigListService$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ex/INtConfigListService;->DEFAULT:Lcom/nothing/server/ex/INtConfigListService;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    return-void
.end method

.method public isInstallingAppForbidden(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public isStartingAppForbidden(Ljava/lang/String;)Z
    .locals 1
    .param p1, "intentString"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    return v0
.end method
