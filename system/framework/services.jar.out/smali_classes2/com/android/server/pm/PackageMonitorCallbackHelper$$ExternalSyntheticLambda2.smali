.class public final synthetic Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:Ljava/util/function/BiFunction;

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/function/BiFunction;

    iput-object p5, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 0
    iget v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/function/BiFunction;

    iget-object v4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    move-object v5, p1

    check-cast v5, Landroid/os/IRemoteCallback;

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->$r8$lambda$aUWlqwCz-5h_-aMsuSrfdCoFYEM(I[ILandroid/content/Intent;Ljava/util/function/BiFunction;Ljava/util/ArrayList;Landroid/os/IRemoteCallback;Ljava/lang/Object;)V

    return-void
.end method
