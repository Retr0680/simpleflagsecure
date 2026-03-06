.class Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;
.super Ljava/lang/Object;
.source "AppCompatDisplayCompatModePolicy.java"


# instance fields
.field private mIsRestartMenuEnabledForDisplayMove:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isRestartMenuEnabledForDisplayMove()Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method onMovedToDisplay()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mIsRestartMenuEnabledForDisplayMove:Z

    .line 34
    return-void
.end method

.method onProcessRestarted()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mIsRestartMenuEnabledForDisplayMove:Z

    .line 38
    return-void
.end method
