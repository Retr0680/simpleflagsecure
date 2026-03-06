.class public final synthetic Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerService;

.field public final synthetic f$1:Landroid/content/pm/VersionedPackage;

.field public final synthetic f$2:Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/VersionedPackage;

    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iput p4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$1:Landroid/content/pm/VersionedPackage;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda4;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageInstallerService;->$r8$lambda$5JSFIXErxJYX5g1H-eDAdRoQbDM(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/VersionedPackage;Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;II)V

    return-void
.end method
