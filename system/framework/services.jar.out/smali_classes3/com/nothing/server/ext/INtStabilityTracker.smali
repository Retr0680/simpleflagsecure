.class public interface abstract Lcom/nothing/server/ext/INtStabilityTracker;
.super Ljava/lang/Object;
.source "INtStabilityTracker.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtStabilityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/nothing/server/ext/INtStabilityTracker$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtStabilityTracker$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtStabilityTracker;->DEFAULT:Lcom/nothing/server/ext/INtStabilityTracker;

    return-void
.end method


# virtual methods
.method public printErrorOnScreen([BLjava/lang/String;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "tag"    # Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setBootCompleted()V
    .locals 0

    .line 20
    return-void
.end method
