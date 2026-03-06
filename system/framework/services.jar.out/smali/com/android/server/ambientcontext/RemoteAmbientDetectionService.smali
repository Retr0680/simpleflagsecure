.class interface abstract Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;
.super Ljava/lang/Object;
.source "RemoteAmbientDetectionService.java"


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
.end method

.method public abstract startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
.end method

.method public abstract stopDetection(Ljava/lang/String;)V
.end method

.method public abstract unbind()V
.end method
