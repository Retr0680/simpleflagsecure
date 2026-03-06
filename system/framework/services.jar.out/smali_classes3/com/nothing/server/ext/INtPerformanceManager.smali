.class public interface abstract Lcom/nothing/server/ext/INtPerformanceManager;
.super Ljava/lang/Object;
.source "INtPerformanceManager.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtPerformanceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/nothing/server/ext/INtPerformanceManager$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtPerformanceManager$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtPerformanceManager;->DEFAULT:Lcom/nothing/server/ext/INtPerformanceManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 26
    return-void
.end method

.method public recordAppStartTime(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "time"    # I

    .line 27
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    return-void
.end method
