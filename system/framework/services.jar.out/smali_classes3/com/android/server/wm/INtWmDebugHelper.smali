.class public interface abstract Lcom/android/server/wm/INtWmDebugHelper;
.super Ljava/lang/Object;
.source "INtWmDebugHelper.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtWmDebugHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/server/wm/INtWmDebugHelper$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtWmDebugHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtWmDebugHelper;->DEFAULT:Lcom/android/server/wm/INtWmDebugHelper;

    return-void
.end method


# virtual methods
.method public enableDynamicLog(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/internal/protolog/common/IProtoLog;)Z
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "protoLog"    # Lcom/android/internal/protolog/common/IProtoLog;

    .line 25
    const/4 v0, 0x0

    return v0
.end method
