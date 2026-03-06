.class public final synthetic Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/InstallPackageHelper;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Lcom/android/server/pm/MoveInfo;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iput-object p2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/pm/MoveInfo;

    iput-wide p6, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/pm/MoveInfo;

    iget-wide v5, p0, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda8;->f$5:J

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->$r8$lambda$Nvd3mg3KF2nCNWvp0cl-vZ7qZPk(Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/MoveInfo;J)V

    return-void
.end method
