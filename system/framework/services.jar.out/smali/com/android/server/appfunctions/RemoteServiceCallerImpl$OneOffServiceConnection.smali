.class Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;
.super Ljava/lang/Object;
.source "RemoteServiceCallerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appfunctions/RemoteServiceCallerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneOffServiceConnection"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mCallerBinder:Landroid/os/IBinder;

.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mCancellationTimeoutMillis:J

.field private final mCancellationTimeoutRunnable:Ljava/lang/Runnable;

.field private mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

.field private final mFlags:I

.field private final mIntent:Landroid/content/Intent;

.field private final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;


# direct methods
.method public static synthetic $r8$lambda$1n4cdoFiCzonraZ_LmLZcsSPRlo(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->lambda$bindAndRun$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOxpwBo-RFIF3aZciI2a6D-StWs(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->lambda$onServiceConnected$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jRI7ZCajnAJtW9Z_h6t3UcXC5v0(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->lambda$bindAndRun$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$oz66ips8C2vPpUhpUdoB9AOp8Sg(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .param p5, "cancellationTimeoutMillis"    # J
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p9, "callerBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            "J",
            "Landroid/os/CancellationSignal;",
            "Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback<",
            "TT;>;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    .local p8, "callback":Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;, "Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback<TT;>;"
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mIntent:Landroid/content/Intent;

    .line 108
    iput p3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mFlags:I

    .line 109
    iput-object p8, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;

    .line 110
    iput-object p4, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    .line 111
    iput-wide p5, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutMillis:J

    .line 112
    iput-object p7, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 113
    new-instance p1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutRunnable:Ljava/lang/Runnable;

    .line 114
    iput-object p9, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    .line 115
    return-void
.end method

.method private synthetic lambda$bindAndRun$0()V
    .locals 4

    .line 124
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;

    invoke-interface {v0}, Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;->onCancelled()V

    .line 125
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method

.method private synthetic lambda$bindAndRun$1()V
    .locals 2

    .line 130
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    const-string v0, "AppFunctionsServiceCall"

    const-string v1, "Caller process onDeath signal received"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 132
    return-void
.end method

.method private synthetic lambda$onServiceConnected$2(Ljava/lang/Object;)V
    .locals 1
    .param p1, "serviceInterface"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;

    invoke-interface {v0, p1, p0}, Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;->onServiceConnected(Ljava/lang/Object;Lcom/android/server/appfunctions/RemoteServiceCaller$ServiceUsageCompleteListener;)V

    return-void
.end method

.method private safeUnbind()V
    .locals 3

    .line 172
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmContext(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_1

    .line 179
    :cond_0
    :goto_0
    goto :goto_2

    .line 177
    :goto_1
    nop

    .line 178
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AppFunctionsServiceCall"

    const-string v2, "Failed to unbind"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public bindAndRun()Z
    .locals 4

    .line 118
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmContext(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mFlags:I

    iget-object v3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mUserHandle:Landroid/os/UserHandle;

    .line 119
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 121
    .local v0, "bindServiceResult":Z
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    invoke-virtual {v1, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 128
    new-instance v1, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;)V

    iput-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mDirectServiceVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to link to death on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallerBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppFunctionsServiceCall"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 142
    :goto_1
    return v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 160
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 161
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmExecutor(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public onCompleted()V
    .locals 0

    .line 184
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 185
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 166
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 167
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmExecutor(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 147
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmInterfaceConverter(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/function/Function;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "serviceInterface":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmExecutor(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 154
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    invoke-direct {p0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->safeUnbind()V

    .line 155
    iget-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->this$0:Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    invoke-static {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->-$$Nest$fgetmExecutor(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->mCallback:Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
