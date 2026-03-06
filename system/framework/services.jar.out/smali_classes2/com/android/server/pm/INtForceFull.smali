.class public interface abstract Lcom/android/server/pm/INtForceFull;
.super Ljava/lang/Object;
.source "INtForceFull.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/INtForceFull;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/pm/INtForceFull$1;

    invoke-direct {v0}, Lcom/android/server/pm/INtForceFull$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/INtForceFull;->DEFAULT:Lcom/android/server/pm/INtForceFull;

    return-void
.end method


# virtual methods
.method public adjustInsetsForWindow(Landroid/view/InsetsState;Landroid/content/pm/ActivityInfo;)Landroid/view/InsetsState;
    .locals 0
    .param p1, "originalState"    # Landroid/view/InsetsState;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .line 33
    return-object p1
.end method

.method public getCutoutMode(ILandroid/content/pm/ActivityInfo;II)I
    .locals 0
    .param p1, "cutoutMode"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 31
    return p1
.end method

.method public init(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)V
    .locals 0
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "ipm"    # Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;

    .line 26
    return-void
.end method

.method public isForceFullForUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public overrideMaxAspectRatio(Landroid/content/pm/ActivityInfo;)F
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public setForceFull(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "forceFull"    # Z

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxAspectRatio(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 0
    .param p1, "pkg"    # Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .param p2, "forceFull"    # Z

    .line 29
    return-void
.end method
