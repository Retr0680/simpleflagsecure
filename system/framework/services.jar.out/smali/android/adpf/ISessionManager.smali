.class public interface abstract Landroid/adpf/ISessionManager;
.super Ljava/lang/Object;
.source "ISessionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adpf/ISessionManager$Stub;,
        Landroid/adpf/ISessionManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.adpf.ISessionManager"


# virtual methods
.method public abstract associateSessionToLayers(II[Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract trackedSessionsDied([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
