.class public Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;
.super Lcom/android/server/SystemService;
.source "DynamicInstrumentationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;
    }
.end annotation


# instance fields
.field private mAmInternal:Landroid/app/ActivityManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAmInternal(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 60
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 61
    new-instance v0, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService$BinderService;-><init>(Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService-IA;)V

    const-string v1, "dynamic_instrumentation"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    return-void
.end method
