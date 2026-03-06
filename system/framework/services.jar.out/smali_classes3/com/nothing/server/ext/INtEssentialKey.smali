.class public interface abstract Lcom/nothing/server/ext/INtEssentialKey;
.super Ljava/lang/Object;
.source "INtEssentialKey.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtEssentialKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/nothing/server/ext/INtEssentialKey$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtEssentialKey$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtEssentialKey;->DEFAULT:Lcom/nothing/server/ext/INtEssentialKey;

    return-void
.end method


# virtual methods
.method public onAppFocusChanged(Lcom/android/server/wm/NtWmWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/android/server/wm/NtWmWrapper;

    .line 26
    return-void
.end method

.method public onCallInfoChanged(Landroid/telephony/PreciseCallState;I)V
    .locals 0
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;
    .param p2, "subId"    # I

    .line 30
    return-void
.end method

.method public onRecord(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 27
    return-void
.end method

.method public onUserSwitching()V
    .locals 0

    .line 29
    return-void
.end method

.method public onWindowingModeChanged()V
    .locals 0

    .line 28
    return-void
.end method
