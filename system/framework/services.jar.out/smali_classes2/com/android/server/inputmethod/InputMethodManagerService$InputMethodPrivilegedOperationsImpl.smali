.class final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mToken:Landroid/os/IBinder;

.field private final mUserData:Lcom/android/server/inputmethod/UserData;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 6917
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 6918
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6919
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 6920
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    .line 6921
    return-void
.end method

.method private static calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "userData"    # Lcom/android/server/inputmethod/UserData;

    .line 7250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7251
    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 7252
    .local v0, "bindingController":Lcom/android/server/inputmethod/InputMethodBindingController;
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq p0, v1, :cond_0

    .line 7253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to an invalid token. uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7253
    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7255
    const/4 v1, 0x0

    return v1

    .line 7257
    :cond_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "setVisible"    # Z
    .param p3, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 7190
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_0

    .line 7192
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p3, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7194
    monitor-exit v0

    return-void

    .line 7199
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7196
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p3, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7198
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mapplyImeVisibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/inputmethod/UserData;)V

    .line 7199
    monitor-exit v0

    .line 7200
    return-void

    .line 7199
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6969
    move-object v0, p3

    .line 6971
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6972
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6973
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6974
    monitor-exit v1

    return-void

    .line 6978
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 6976
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, p1, p2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mcreateInputContentUriTokenLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v2

    .line 6977
    invoke-interface {v2}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 6976
    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 6978
    monitor-exit v1

    .line 6981
    goto :goto_1

    .line 6978
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "contentUri":Landroid/net/Uri;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6979
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/os/IBinder;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "contentUri":Landroid/net/Uri;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v1

    nop

    .line 6980
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 6982
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 9
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "flags"    # I
    .param p3, "reason"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 7037
    move-object v0, p4

    .line 7039
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7040
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2f

    if-nez v2, :cond_0

    .line 7041
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7043
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7044
    monitor-exit v1

    return-void

    .line 7057
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7046
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7048
    const-string v2, "IMMS.hideMySoftInput"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7051
    .local v6, "ident":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, p1, p2, p3, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhideMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V

    .line 7052
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7054
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7055
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 7056
    nop

    .line 7057
    .end local v6    # "ident":J
    monitor-exit v1

    .line 7060
    goto :goto_1

    .line 7054
    .restart local v6    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7055
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 7056
    nop

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p2    # "flags":I
    .end local p3    # "reason":I
    .end local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    throw v2

    .line 7057
    .end local v6    # "ident":J
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "flags":I
    .restart local p3    # "reason":I
    .restart local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p2    # "flags":I
    .end local p3    # "reason":I
    .end local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 7058
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "flags":I
    .restart local p3    # "reason":I
    .restart local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_2
    move-exception v1

    nop

    .line 7059
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7061
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public notifyUserActionAsync()V
    .locals 3

    .line 7178
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7180
    monitor-exit v0

    return-void

    .line 7183
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7182
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mnotifyUserActionLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)V

    .line 7183
    monitor-exit v0

    .line 7184
    return-void

    .line 7183
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onImeSwitchButtonClickFromClient(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 7167
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7168
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7169
    monitor-exit v0

    return-void

    .line 7172
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7171
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monImeSwitchButtonClickLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V

    .line 7172
    monitor-exit v0

    .line 7173
    return-void

    .line 7172
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStylusHandwritingReady(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "pid"    # I

    .line 7205
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7207
    monitor-exit v0

    return-void

    .line 7210
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7209
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$monStylusHandwritingReadyLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V

    .line 7210
    monitor-exit v0

    .line 7211
    return-void

    .line 7210
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportFullscreenModeAsync(Z)V
    .locals 3
    .param p1, "fullscreen"    # Z

    .line 6987
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6988
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6989
    monitor-exit v0

    return-void

    .line 6992
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6991
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportFullscreenModeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)V

    .line 6992
    monitor-exit v0

    .line 6993
    return-void

    .line 6992
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "startInputToken"    # Landroid/os/IBinder;

    .line 6938
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6939
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6940
    monitor-exit v0

    return-void

    .line 6943
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6942
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mreportStartInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    .line 6943
    monitor-exit v0

    .line 6944
    return-void

    .line 6943
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetStylusHandwriting(I)V
    .locals 3
    .param p1, "requestId"    # I

    .line 7216
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7218
    monitor-exit v0

    return-void

    .line 7221
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7220
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetStylusHandwritingLocked(Lcom/android/server/inputmethod/InputMethodManagerService;I)V

    .line 7221
    monitor-exit v0

    .line 7222
    return-void

    .line 7221
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHandwritingSurfaceNotTouchable(Z)V
    .locals 3
    .param p1, "notTouchable"    # Z

    .line 6949
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6950
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6951
    monitor-exit v0

    return-void

    .line 6954
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6953
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->setNotTouchable(Z)V

    .line 6954
    monitor-exit v0

    .line 6955
    return-void

    .line 6954
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHandwritingTouchableRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 6960
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6961
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmHwController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/HandwritingModeController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->setHandwritingTouchableRegion(Landroid/graphics/Region;)V

    .line 6962
    monitor-exit v0

    .line 6963
    return-void

    .line 6962
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImeWindowStatusAsync(II)V
    .locals 3
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 6927
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 6928
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6929
    monitor-exit v0

    return-void

    .line 6932
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 6931
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V

    .line 6932
    monitor-exit v0

    .line 6933
    return-void

    .line 6932
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 6998
    move-object v0, p2

    .line 7000
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7001
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 7002
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7003
    monitor-exit v1

    return-void

    .line 7007
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7005
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, p1, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    .line 7006
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7007
    monitor-exit v1

    .line 7010
    goto :goto_1

    .line 7007
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7008
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v1

    nop

    .line 7009
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7011
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 7017
    move-object v0, p3

    .line 7019
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7020
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 7021
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7022
    monitor-exit v1

    return-void

    .line 7026
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7024
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, p1, p2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V

    .line 7025
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7026
    monitor-exit v1

    .line 7029
    goto :goto_1

    .line 7026
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local p3    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7027
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local p3    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v1

    nop

    .line 7028
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7030
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 7149
    move-object v0, p1

    .line 7151
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7152
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7153
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7154
    monitor-exit v1

    return-void

    .line 7158
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7156
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshouldOfferSwitchingToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7158
    monitor-exit v1

    .line 7161
    goto :goto_1

    .line 7158
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7159
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v1

    nop

    .line 7160
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7162
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 9
    .param p1, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "flags"    # I
    .param p3, "reason"    # I
    .param p4, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 7068
    move-object v0, p4

    .line 7070
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7071
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2f

    if-nez v2, :cond_0

    .line 7072
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7074
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7075
    monitor-exit v1

    return-void

    .line 7088
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7077
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 7079
    const-string v2, "IMMS.showMySoftInput"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7082
    .local v6, "ident":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, p1, p2, p3, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshowMySoftInputLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/server/inputmethod/UserData;)V

    .line 7083
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7085
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7086
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 7087
    nop

    .line 7088
    .end local v6    # "ident":J
    monitor-exit v1

    .line 7091
    goto :goto_1

    .line 7085
    .restart local v6    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7086
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 7087
    nop

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p2    # "flags":I
    .end local p3    # "reason":I
    .end local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    throw v2

    .line 7088
    .end local v6    # "ident":J
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "flags":I
    .restart local p3    # "reason":I
    .restart local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .end local p2    # "flags":I
    .end local p3    # "reason":I
    .end local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 7089
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "statsToken":Landroid/view/inputmethod/ImeTracker$Token;
    .restart local p2    # "flags":I
    .restart local p3    # "reason":I
    .restart local p4    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_2
    move-exception v1

    nop

    .line 7090
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7092
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public switchKeyboardLayoutAsync(I)V
    .locals 5
    .param p1, "direction"    # I

    .line 7227
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7229
    monitor-exit v0

    return-void

    .line 7237
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7231
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7233
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v3, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7235
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7236
    nop

    .line 7237
    .end local v1    # "ident":J
    monitor-exit v0

    .line 7238
    return-void

    .line 7235
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7236
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "direction":I
    throw v3

    .line 7237
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "direction":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 7131
    move-object v0, p2

    .line 7133
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7134
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7135
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7136
    monitor-exit v1

    return-void

    .line 7140
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7138
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToNextInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ZLcom/android/server/inputmethod/UserData;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7140
    monitor-exit v1

    .line 7143
    goto :goto_1

    .line 7140
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "onlyCurrentIme":Z
    .end local p2    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7141
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "onlyCurrentIme":Z
    .restart local p2    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v1

    nop

    .line 7142
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7144
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .param p1, "future"    # Lcom/android/internal/infra/AndroidFuture;

    .line 7113
    move-object v0, p1

    .line 7115
    .local v0, "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7116
    :try_start_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7117
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7118
    monitor-exit v1

    return-void

    .line 7121
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 7120
    :cond_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mswitchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 7121
    monitor-exit v1

    .line 7124
    goto :goto_1

    .line 7121
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "future":Lcom/android/internal/infra/AndroidFuture;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7122
    .restart local v0    # "typedFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "future":Lcom/android/internal/infra/AndroidFuture;
    :catchall_1
    move-exception v1

    nop

    .line 7123
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 7125
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 7097
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 7098
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->calledWithValidTokenLocked(Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7099
    monitor-exit v0

    return-void

    .line 7107
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 7101
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7103
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mUserData:Lcom/android/server/inputmethod/UserData;

    invoke-static {v3, p1, p2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateStatusIconLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7105
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7106
    nop

    .line 7107
    .end local v1    # "ident":J
    monitor-exit v0

    .line 7108
    return-void

    .line 7105
    .restart local v1    # "ident":J
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7106
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "iconId":I
    throw v3

    .line 7107
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "iconId":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
