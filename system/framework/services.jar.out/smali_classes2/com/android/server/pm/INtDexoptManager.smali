.class public interface abstract Lcom/android/server/pm/INtDexoptManager;
.super Ljava/lang/Object;
.source "INtDexoptManager.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/INtDexoptManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/pm/INtDexoptManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/INtDexoptManager$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/INtDexoptManager;->DEFAULT:Lcom/android/server/pm/INtDexoptManager;

    return-void
.end method


# virtual methods
.method public disableCompensateDexoptByCmd(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 28
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 26
    return-void
.end method

.method public systemReady()V
    .locals 0

    .line 27
    return-void
.end method
