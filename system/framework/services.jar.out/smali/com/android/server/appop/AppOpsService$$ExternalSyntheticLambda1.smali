.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    return-void
.end method


# virtual methods
.method public final onInterfaceDied(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-object v4, p2

    check-cast v4, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/AppOpsService;->$r8$lambda$8-LvphSu5hQo1Pm8R22O3seI00E(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Landroid/os/RemoteCallbackList;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;Ljava/lang/Object;)V

    return-void
.end method
