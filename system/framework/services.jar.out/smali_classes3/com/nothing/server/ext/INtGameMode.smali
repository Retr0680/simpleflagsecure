.class public interface abstract Lcom/nothing/server/ext/INtGameMode;
.super Ljava/lang/Object;
.source "INtGameMode.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtGameMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/nothing/server/ext/INtGameMode$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtGameMode$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtGameMode;->DEFAULT:Lcom/nothing/server/ext/INtGameMode;

    return-void
.end method


# virtual methods
.method public isGameModeRunning()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onAppFocusChanged(Lcom/android/server/wm/NtWmWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/android/server/wm/NtWmWrapper;

    .line 29
    return-void
.end method

.method public onOccludedChanged(Z)V
    .locals 0
    .param p1, "occluded"    # Z

    .line 27
    return-void
.end method

.method public onUserSwitching()V
    .locals 0

    .line 32
    return-void
.end method

.method public onWindowingModeChanged()V
    .locals 0

    .line 31
    return-void
.end method

.method public setLockScreenShown(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 28
    return-void
.end method

.method public updateIdentifiedGames(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONArray;

    .line 30
    return-void
.end method
