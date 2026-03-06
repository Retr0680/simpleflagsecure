.class final Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;
.super Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;
.source "IntrusionDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinderService"
.end annotation


# instance fields
.field final mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;


# direct methods
.method constructor <init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/os/PermissionEnforcer;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
    .param p2, "permissionEnforcer"    # Landroid/os/PermissionEnforcer;

    .line 110
    invoke-direct {p0, p2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 111
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    .line 112
    return-void
.end method


# virtual methods
.method public addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    .line 117
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->addStateCallback_enforcePermission()V

    .line 118
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method public disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    .line 138
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->disable_enforcePermission()V

    .line 139
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void
.end method

.method public enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;

    .line 131
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->enable_enforcePermission()V

    .line 132
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;

    .line 124
    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->removeStateCallback_enforcePermission()V

    .line 125
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-static {v0}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->-$$Nest$fgetmHandler(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method
