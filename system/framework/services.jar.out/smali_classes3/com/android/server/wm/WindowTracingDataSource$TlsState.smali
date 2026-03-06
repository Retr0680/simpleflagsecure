.class public Lcom/android/server/wm/WindowTracingDataSource$TlsState;
.super Ljava/lang/Object;
.source "WindowTracingDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowTracingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlsState"
.end annotation


# instance fields
.field public final mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

.field public final mIsStarting:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowTracingDataSource$Config;)V
    .locals 2
    .param p1, "config"    # Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mIsStarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    iput-object p1, p0, Lcom/android/server/wm/WindowTracingDataSource$TlsState;->mConfig:Lcom/android/server/wm/WindowTracingDataSource$Config;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowTracingDataSource$Config;Lcom/android/server/wm/WindowTracingDataSource-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowTracingDataSource$TlsState;-><init>(Lcom/android/server/wm/WindowTracingDataSource$Config;)V

    return-void
.end method
