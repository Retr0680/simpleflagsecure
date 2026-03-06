.class public interface abstract Lcom/android/server/appfunctions/RemoteServiceCaller;
.super Ljava/lang/Object;
.source "RemoteServiceCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;,
        Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract runServiceCall(Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            "J",
            "Landroid/os/CancellationSignal;",
            "Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation
.end method
