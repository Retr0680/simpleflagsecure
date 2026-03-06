.class public interface abstract Lcom/nothing/server/ext/INtGesture;
.super Ljava/lang/Object;
.source "INtGesture.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/nothing/server/ext/INtGesture$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtGesture$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtGesture;->DEFAULT:Lcom/nothing/server/ext/INtGesture;

    return-void
.end method


# virtual methods
.method public dumpNtGesture(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 27
    return-void
.end method

.method public monitorGestureIfPossible()V
    .locals 0

    .line 22
    return-void
.end method

.method public onUserSwitching(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 23
    return-void
.end method

.method public shouldBlockKeyChordScreenshot()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method
