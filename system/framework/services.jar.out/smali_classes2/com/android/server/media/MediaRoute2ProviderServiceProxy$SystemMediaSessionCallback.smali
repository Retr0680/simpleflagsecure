.class public interface abstract Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemMediaSessionCallback"
.end annotation


# virtual methods
.method public abstract onRequestFailed(JI)V
.end method

.method public abstract onSessionReleased()V
.end method

.method public abstract onSessionUpdate(Landroid/media/RoutingSessionInfo;)V
.end method
