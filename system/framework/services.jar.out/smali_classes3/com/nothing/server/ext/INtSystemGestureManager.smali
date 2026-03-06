.class public interface abstract Lcom/nothing/server/ext/INtSystemGestureManager;
.super Ljava/lang/Object;
.source "INtSystemGestureManager.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtSystemGestureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/nothing/server/ext/INtSystemGestureManager$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtSystemGestureManager$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtSystemGestureManager;->DEFAULT:Lcom/nothing/server/ext/INtSystemGestureManager;

    return-void
.end method


# virtual methods
.method public getSystemGestureHeight(I)I
    .locals 0
    .param p1, "swipeStartThresholdBottom"    # I

    .line 30
    return p1
.end method

.method public abstract init(Landroid/content/Context;)V
.end method
