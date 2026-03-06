.class public interface abstract Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;
.super Ljava/lang/Object;
.source "RemoteServiceCaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appfunctions/RemoteServiceCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RunServiceCallCallback"
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
.method public abstract onCancelled()V
.end method

.method public abstract onFailedToConnect()V
.end method

.method public abstract onServiceConnected(Ljava/lang/Object;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;",
            ")V"
        }
    .end annotation
.end method
