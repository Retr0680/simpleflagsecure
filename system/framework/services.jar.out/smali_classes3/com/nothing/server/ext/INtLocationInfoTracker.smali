.class public interface abstract Lcom/nothing/server/ext/INtLocationInfoTracker;
.super Ljava/lang/Object;
.source "INtLocationInfoTracker.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtLocationInfoTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/nothing/server/ext/INtLocationInfoTracker$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtLocationInfoTracker$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtLocationInfoTracker;->DEFAULT:Lcom/nothing/server/ext/INtLocationInfoTracker;

    return-void
.end method


# virtual methods
.method public recordExtraCommandInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public recordGnssLocationNum()V
    .locals 0

    .line 28
    return-void
.end method

.method public recordGnssNavInfo(Landroid/location/GnssStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 27
    return-void
.end method

.method public recordGnssNavStatus(ZI)V
    .locals 0
    .param p1, "bool"    # Z
    .param p2, "ttff"    # I

    .line 26
    return-void
.end method

.method public recordModeStatus(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .line 22
    return-void
.end method

.method public recordRegisterRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public recordUnRegisterRequester(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 25
    return-void
.end method
