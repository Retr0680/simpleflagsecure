.class public Lcom/android/server/connectivity/Vpn$Ikev2SessionCreator;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ikev2SessionCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIkeSession(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ikeSessionParams"    # Landroid/net/ipsec/ike/IkeSessionParams;
    .param p3, "firstChildSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p4, "userCbExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "ikeSessionCallback"    # Landroid/net/ipsec/ike/IkeSessionCallback;
    .param p6, "firstChildSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 4603
    new-instance v0, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;

    new-instance v1, Landroid/net/ipsec/ike/IkeSession;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    .end local p3    # "firstChildSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .end local p4    # "userCbExecutor":Ljava/util/concurrent/Executor;
    .end local p5    # "ikeSessionCallback":Landroid/net/ipsec/ike/IkeSessionCallback;
    .end local p6    # "firstChildSessionCallback":Landroid/net/ipsec/ike/ChildSessionCallback;
    .local v2, "context":Landroid/content/Context;
    .local v3, "ikeSessionParams":Landroid/net/ipsec/ike/IkeSessionParams;
    .local v4, "firstChildSessionParams":Landroid/net/ipsec/ike/ChildSessionParams;
    .local v5, "userCbExecutor":Ljava/util/concurrent/Executor;
    .local v6, "ikeSessionCallback":Landroid/net/ipsec/ike/IkeSessionCallback;
    .local v7, "firstChildSessionCallback":Landroid/net/ipsec/ike/ChildSessionCallback;
    invoke-direct/range {v1 .. v7}, Landroid/net/ipsec/ike/IkeSession;-><init>(Landroid/content/Context;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Ljava/util/concurrent/Executor;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$IkeSessionWrapper;-><init>(Landroid/net/ipsec/ike/IkeSession;)V

    return-object v0
.end method
