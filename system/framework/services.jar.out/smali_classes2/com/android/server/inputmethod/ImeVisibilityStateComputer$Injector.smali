.class interface abstract Lcom/android/server/inputmethod/ImeVisibilityStateComputer$Injector;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/ImeVisibilityStateComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Injector"
.end annotation


# virtual methods
.method public abstract getImeValidator()Lcom/android/server/inputmethod/InputMethodManagerService$ImeDisplayValidator;
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserManagerService()Lcom/android/server/pm/UserManagerInternal;
.end method

.method public abstract getWmService()Lcom/android/server/wm/WindowManagerInternal;
.end method
