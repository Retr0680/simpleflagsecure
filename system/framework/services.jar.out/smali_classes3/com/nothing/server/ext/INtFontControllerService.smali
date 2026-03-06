.class public interface abstract Lcom/nothing/server/ext/INtFontControllerService;
.super Ljava/lang/Object;
.source "INtFontControllerService.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtFontControllerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/nothing/server/ext/INtFontControllerService$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtFontControllerService$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtFontControllerService;->DEFAULT:Lcom/nothing/server/ext/INtFontControllerService;

    return-void
.end method


# virtual methods
.method public checkApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    return-void
.end method
