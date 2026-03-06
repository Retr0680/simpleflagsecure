.class public Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "CompanionServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/companion/ICompanionDeviceService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CDM_CompanionServiceConnector"

.field private static final UNBIND_POST_DELAY_MS:J = 0x1388L

.field private static volatile sServiceThread:Lcom/android/server/ServiceThread;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIsPrimary:Z

.field private mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

.field private final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$6ghL_L70pPCSGZnz5TR7_OwMlgI(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9-2n99wLId0e8HpWCVQAUufEOU(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h-XHC4o4z88gn0VW2ITaOxxOuWw(Landroid/companion/DevicePresenceEvent;Landroid/companion/ICompanionDeviceService;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->lambda$postOnDevicePresenceEvent$2(Landroid/companion/DevicePresenceEvent;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "bindingFlags"    # I
    .param p5, "isPrimary"    # Z

    .line 99
    invoke-static {p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v3, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "userId":I
    .end local p4    # "bindingFlags":I
    .local v1, "context":Landroid/content/Context;
    .local v3, "bindingFlags":I
    .local v4, "userId":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 100
    iput v4, v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    .line 101
    iput-object p3, v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    .line 102
    iput-boolean p5, v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    .line 103
    return-void
.end method

.method private static buildIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private static getServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 199
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_1

    .line 200
    const-class v0, Lcom/android/server/companion/CompanionDeviceManagerService;

    monitor-enter v0

    .line 201
    :try_start_0
    sget-object v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "companion-device-service-connector"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    .line 204
    sget-object v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    return-object v0
.end method

.method private static synthetic lambda$postOnDeviceAppeared$0(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .param p0, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p1, "companionService"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private static synthetic lambda$postOnDeviceDisappeared$1(Landroid/companion/AssociationInfo;Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .param p0, "associationInfo"    # Landroid/companion/AssociationInfo;
    .param p1, "companionService"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method private static synthetic lambda$postOnDevicePresenceEvent$2(Landroid/companion/DevicePresenceEvent;Landroid/companion/ICompanionDeviceService;)V
    .locals 0
    .param p0, "event"    # Landroid/companion/DevicePresenceEvent;
    .param p1, "companionService"    # Landroid/companion/ICompanionDeviceService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method static newInstance(Landroid/content/Context;ILandroid/content/ComponentName;ZZ)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "isSelfManaged"    # Z
    .param p4, "isPrimary"    # Z

    .line 91
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000000

    goto :goto_0

    .line 92
    :cond_0
    const/high16 v0, 0x10000

    :goto_0
    move v5, v0

    .line 93
    .local v5, "bindingFlags":I
    new-instance v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "userId":I
    .end local p2    # "componentName":Landroid/content/ComponentName;
    .end local p4    # "isPrimary":Z
    .local v2, "context":Landroid/content/Context;
    .local v3, "userId":I
    .local v4, "componentName":Landroid/content/ComponentName;
    .local v6, "isPrimary":Z
    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;-><init>(Landroid/content/Context;ILandroid/content/ComponentName;IZ)V

    return-object v1
.end method


# virtual methods
.method protected binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .line 168
    invoke-static {p1}, Landroid/companion/ICompanionDeviceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->binderAsInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceService;

    move-result-object p1

    return-object p1
.end method

.method public binderDied()V
    .locals 3

    .line 156
    invoke-super {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionServiceConnector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    iget v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mUserId:I

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;->onBindingDied(ILjava/lang/String;Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 188
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getJobHandler()Landroid/os/Handler;
    .locals 1

    .line 182
    invoke-static {}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method isPrimary()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mIsPrimary:Z

    return v0
.end method

.method protected onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V
    .locals 2
    .param p1, "service"    # Landroid/companion/ICompanionDeviceService;
    .param p2, "isConnected"    # Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnectionStatusChanged() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionServiceConnector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 46
    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->onServiceConnectionStatusChanged(Landroid/companion/ICompanionDeviceService;Z)V

    return-void
.end method

.method postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 1
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 110
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 111
    return-void
.end method

.method postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 1
    .param p1, "associationInfo"    # Landroid/companion/AssociationInfo;

    .line 114
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda3;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 115
    return-void
.end method

.method postOnDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/companion/DevicePresenceEvent;

    .line 118
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda1;-><init>(Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 119
    return-void
.end method

.method postUnbind()V
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/CompanionServiceConnector;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method setListener(Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    .line 106
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->mListener:Lcom/android/server/companion/devicepresence/CompanionServiceConnector$Listener;

    .line 107
    return-void
.end method
