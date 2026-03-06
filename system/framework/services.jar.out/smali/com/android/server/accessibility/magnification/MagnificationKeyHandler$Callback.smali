.class public interface abstract Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;
.super Ljava/lang/Object;
.source "MagnificationKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onKeyboardInteractionStop()V
.end method

.method public abstract onPanMagnificationStart(II)V
.end method

.method public abstract onPanMagnificationStop(I)V
.end method

.method public abstract onScaleMagnificationStart(II)V
.end method

.method public abstract onScaleMagnificationStop(I)V
.end method
