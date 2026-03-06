.class final Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;
.super Ljava/lang/Object;
.source "IntrusionDetectionService.java"

# interfaces
.implements Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InjectorImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 302
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDataAggregator(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)Lcom/android/server/security/intrusiondetection/DataAggregator;
    .locals 2
    .param p1, "intrusionDetectionService"    # Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    .line 332
    new-instance v0, Lcom/android/server/security/intrusiondetection/DataAggregator;

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/server/security/intrusiondetection/DataAggregator;-><init>(Landroid/content/Context;Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;)V

    return-object v0
.end method

.method public getIntrusionDetectionEventransportConnection()Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;
    .locals 2

    .line 326
    new-instance v0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;

    iget-object v1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/security/intrusiondetection/IntrusionDetectionEventTransportConnection;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 4

    .line 316
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "IntrusionDetectionService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 319
    .local v0, "serviceThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 320
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method public getPermissionEnforcer()Landroid/os/PermissionEnforcer;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$InjectorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    return-object v0
.end method
