.class public interface abstract Lcom/nothing/server/ext/INtScrollerCurveManager;
.super Ljava/lang/Object;
.source "INtScrollerCurveManager.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtScrollerCurveManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/nothing/server/ext/INtScrollerCurveManager$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtScrollerCurveManager$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtScrollerCurveManager;->DEFAULT:Lcom/nothing/server/ext/INtScrollerCurveManager;

    return-void
.end method


# virtual methods
.method public preBindApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 27
    return-void
.end method

.method public systemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "context"    # Landroid/content/Context;

    .line 26
    return-void
.end method
