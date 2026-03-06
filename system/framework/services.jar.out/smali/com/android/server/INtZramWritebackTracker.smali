.class public interface abstract Lcom/android/server/INtZramWritebackTracker;
.super Ljava/lang/Object;
.source "INtZramWritebackTracker.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/INtZramWritebackTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/android/server/INtZramWritebackTracker$1;

    invoke-direct {v0}, Lcom/android/server/INtZramWritebackTracker$1;-><init>()V

    sput-object v0, Lcom/android/server/INtZramWritebackTracker;->DEFAULT:Lcom/android/server/INtZramWritebackTracker;

    return-void
.end method


# virtual methods
.method public InitZramWritebackTracker(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    return-void
.end method

.method public updateZramWritebackStatus()V
    .locals 0

    .line 22
    return-void
.end method
