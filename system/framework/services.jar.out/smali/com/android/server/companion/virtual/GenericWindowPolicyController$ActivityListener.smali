.class public interface abstract Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityListener;
.super Ljava/lang/Object;
.source "GenericWindowPolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityListener"
.end annotation


# virtual methods
.method public abstract onActivityLaunchBlocked(ILandroid/content/pm/ActivityInfo;Landroid/content/IntentSender;)V
.end method

.method public abstract onDisplayEmpty(I)V
.end method

.method public abstract onSecureWindowHidden(I)V
.end method

.method public abstract onSecureWindowShown(ILandroid/content/pm/ActivityInfo;)V
.end method

.method public abstract onTopActivityChanged(ILandroid/content/ComponentName;I)V
.end method

.method public abstract shouldInterceptIntent(Landroid/content/Intent;)Z
.end method
