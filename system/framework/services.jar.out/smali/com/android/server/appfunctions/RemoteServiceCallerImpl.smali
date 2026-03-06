.class public Lcom/android/server/appfunctions/RemoteServiceCallerImpl;
.super Ljava/lang/Object;
.source "RemoteServiceCallerImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/RemoteServiceCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/appfunctions/RemoteServiceCaller<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppFunctionsServiceCall"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mInterfaceConverter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceConverter(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;)Ljava/util/function/Function;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Ljava/util/function/Function;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>;"
    .local p2, "interfaceConverter":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mInterfaceConverter:Ljava/util/function/Function;

    .line 62
    iput-object p3, p0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 63
    return-void
.end method


# virtual methods
.method public runServiceCall(Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "bindFlags"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "cancellationTimeoutMillis"    # J
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p8, "callerBinder"    # Landroid/os/IBinder;
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
            ")Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/server/appfunctions/RemoteServiceCallerImpl;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>;"
    .local p7, "callback":Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;, "Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback<TT;>;"
    new-instance v0, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;-><init>(Lcom/android/server/appfunctions/RemoteServiceCallerImpl;Landroid/content/Intent;ILandroid/os/UserHandle;JLandroid/os/CancellationSignal;Lcom/android/server/appfunctions/RemoteServiceCaller$RunServiceCallCallback;Landroid/os/IBinder;)V

    .line 84
    .local v0, "serviceConnection":Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;, "Lcom/android/server/appfunctions/RemoteServiceCallerImpl<TT;>.OneOffServiceConnection;"
    invoke-virtual {v0}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl$OneOffServiceConnection;->bindAndRun()Z

    move-result v1

    return v1
.end method
